local Keyboard = require 'gui.keyboard'

local common = {}
common.add_position = require 'gui.common.position'
common.add_client_size = require 'gui.common.client_size'
common.add_size = require 'gui.common.size'
common.add_label = require 'gui.common.label'
common.add_value = require 'gui.common.value'
common.add_anchor = require 'gui.common.anchor'
common.add_color = require 'gui.common.color'
common.add_text_color = require 'gui.common.text_color'
common.add_resizable = require 'gui.common.resizable'
common.is_destroyable = require 'gui.common.destroyable'
common.is_focusable = require 'gui.common.focusable'

function common.create_metatable(class)
  return {
    -- Handles the setting of properties.
    -- object: the object on which to set the property
    -- key:    the name of the property
    -- value:  the value the property should be set to
    __newindex = function(object, key, value)
      local self = getmetatable(object)
      local getter = self['get_' .. key]
      local setter = self['set_' .. key]
      
      -- If there is no getter and no setter for the specified key, then it's
      -- business as usual and we shouldn't interfere.
      if getter == nil and setter == nil then
        rawset(object, key, value)
      end
      
      -- If there is a setter for the specified key, we should store the value
      -- returned by the setter somewhere, so the getter can access it later.
      -- We create a special value table for the object to do this and store
      -- the value table in the metatable.
      if setter ~= nil then
        self[object] = self[object] or {}
        self[object][key] = setter(object, value) or value
      end
      
      -- If there is a getter for the specified key, but no setter, we should
      -- store the raw value in the value table, so the getter can access it
      -- later. We can't store the value in the object itself, because then
      -- the __index metamethod won't be called anymore.
      if getter ~= nil and setter == nil then
        self[object] = self[object] or {}
        self[object][key] = value
      end
    end,

    -- Handles the getting of properties.
    -- object:  the object of which to get the property
    -- key:     the name of the property
    -- returns: the value of the property
    __index = function(object, key)
      local self = getmetatable(object)
      local getter = self['get_' .. key]
      local setter = self['set_' .. key]
      
      -- If there is a getter for the specified key, call it and return its
      -- value.
      if getter ~= nil then
        return getter(object)
      end
      
      -- If there is no getter for the specified key, but there is a setter,
      -- then the setter might have stored a value in the value table. If not,
      -- the setter hasn't been called yet and we should return nil.
      if setter ~= nil then
        if self[object] == nil then
          return nil
        end
        
        return self[object][key]
      end
      
      -- If there is no getter and no setter for the specified key, we should
      -- treat the object as a normal table. If the object doesn't contain the
      -- specified key, look up the key in the object's class.
      return rawget(object, key) or class[key]
    end
  }
end

function common.add_event(object, event_name, wx_event, ...)
  local params = { ... }
  local trigger_event = function(event)
    if wx_event == wx.wxEVT_KEY_DOWN then
      event:Skip()
    end
    
    if type(object[event_name]) == 'function' then
      if type(params[1]) == 'function' then
        object[event_name](object, params[1](event))
      else
        object[event_name](object, unpack(params))
      end
    end
  end
  
  local event_source = object.wx
  if object.wx_panel and wx_event ~= wx.wxEVT_MOVE then
    event_source = object.wx_panel
  end
    
  event_source:Connect(wx_event, trigger_event)
  
  -- Store the code that unregisters the event, so we can call it when the
  -- object is destroyed. Note that the code is only stored if the object
  -- has a wx_events property.
  table.insert(object.wx_events or {}, function()
    event_source:Disconnect(wx.wxID_ANY, wx.wxID_ANY, wx_event)
  end)
end

function common.propagate_events(object, wx_events)
  local propagate = function(event)
    event:ResumePropagation(1)
    event:Skip()
  end
  
  wx_events = wx_events or {
    wx.wxEVT_MOTION,
    wx.wxEVT_LEFT_DOWN,
    wx.wxEVT_LEFT_UP,
    wx.wxEVT_MIDDLE_DOWN,
    wx.wxEVT_MIDDLE_UP,
    wx.wxEVT_RIGHT_UP,
    wx.wxEVT_RIGHT_DOWN,
    wx.wxEVT_KEY_UP,
    wx.wxEVT_KEY_DOWN }
  
  for _, wx_event in ipairs(wx_events) do
    object.wx:Connect(wx_event, propagate)
  end
end

function common.add_anchor_event(object, f)
  object.parent.wx:Connect(wx.wxEVT_SIZE, function(event)
    local metatable = getmetatable(object)
    if metatable then
      metatable.update_anchor(object)
      
      if type(f) == 'function' then
        f()
      end
    end
    
    event:Skip()
  end)
end

function common.add_mouse_events(object)
  common.mouse_listeners = common.mouse_listeners or {}
  table.insert(common.mouse_listeners, object)
  
  -- Store the code that unsubscribed from mouse events, so we can call it when
  -- the object is destroyed. Note that the code is only stored if the object
  -- has a wx_events property.
  table.insert(object.wx_events or {}, function()
    for i, v in ipairs(common.mouse_listeners) do
      if v == object then
        table.remove(common.mouse_listeners, i)
        break
      end
    end
  end)
end

function common.add_keyboard_events(object)
  local function process_keyboard_event(event)
    local key = event:GetKeyCode()
    local modifiers = {
      shift = event:ShiftDown(),
      ctrl = event:ControlDown(),
      alt = event:AltDown(),
      windows = event:MetaDown(),
      apple = event:MetaDown(),
      cmd = event:CmdDown(),
    }
    modifiers.any = shift or ctrl or alt or windows or apple or cmd
    
    return Keyboard.key_names[key], modifiers
  end
  
  common.add_event(object, 'on_key_up', wx.wxEVT_KEY_UP, process_keyboard_event)
  common.add_event(object, 'on_key_down', wx.wxEVT_KEY_DOWN, process_keyboard_event)
end

function common.forward_mouse_events(object)
  -- Since event propagation for mouse events doesn't work properly in wxLua, the window has
  -- to take care of raising mouse events on interested controls.
  local function send_mouse_event(wx_event, handler_name, param)
    return function(event)
      event:Skip()
      
      for _, mouse_listener in ipairs(common.mouse_listeners) do
        if mouse_listener[handler_name] ~= nil then
          local x, y, width, height
          
          if mouse_listener.wx == nil then  -- is this an image?
            x, y = object.wx:ScreenToClient(wx.wxGetMousePosition()):GetXY()
            x = x - mouse_listener.x
            y = y - mouse_listener.y
            width = mouse_listener.width
            height = mouse_listener.height
          else
            x, y = mouse_listener.wx:ScreenToClient(wx.wxGetMousePosition()):GetXY()
            width = mouse_listener.wx:GetSize():GetWidth()
            height = mouse_listener.wx:GetSize():GetHeight()
          end
          
          if x >= 0 and y >= 0 and x < width and y < height then
            if param == nil then
              mouse_listener[handler_name](mouse_listener, x, y)
            else
              mouse_listener[handler_name](mouse_listener, param, x, y)
            end
          end
        end
      end
    end
  end
  
  object.wx_panel:Connect(wx.wxEVT_LEFT_UP, send_mouse_event(wx.wxEVT_LEFT_DOWN, 'on_mouse_up', 'left'))
  object.wx_panel:Connect(wx.wxEVT_LEFT_DOWN, send_mouse_event(wx.wxEVT_LEFT_DOWN, 'on_mouse_down', 'left'))
  object.wx_panel:Connect(wx.wxEVT_MIDDLE_UP, send_mouse_event(wx.wxEVT_MIDDLE_DOWN, 'on_mouse_up', 'middle'))
  object.wx_panel:Connect(wx.wxEVT_MIDDLE_DOWN, send_mouse_event(wx.wxEVT_MIDDLE_DOWN, 'on_mouse_down', 'middle'))
  object.wx_panel:Connect(wx.wxEVT_RIGHT_UP, send_mouse_event(wx.wxEVT_RIGHT_DOWN, 'on_mouse_up', 'right'))
  object.wx_panel:Connect(wx.wxEVT_RIGHT_DOWN, send_mouse_event(wx.wxEVT_RIGHT_DOWN, 'on_mouse_down', 'right'))
  
  -- Tell the global mouse object its coordinates relative to this window. Otherwise, the mouse
  -- object can only know the screen coordinates.
  object.wx_panel:Connect(wx.wxEVT_MOTION, function(event)
    gui.mouse.x, gui.mouse.y = object.wx:ScreenToClient(wx.wxGetMousePosition()):GetXY()
    send_mouse_event(wx.wxEVT_MOTION, 'on_mouse_move')(event)
  end)
end

function common.paint_images(window)
  if #window.images == 0 then return end
  local dc = wx.wxPaintDC(window.wx_panel)
  
  for _, image in ipairs(window.images) do
    local bitmap = wx.wxBitmap(image.image:Scale(image.width, image.height))  
    dc:DrawBitmap(bitmap, image.x, image.y, image.image:HasMask())
    bitmap:delete()
  end
  
  dc:delete()
end

return common