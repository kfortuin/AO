ents = {}
ents.objects = {}
ents.objpath = "entities/"
local register = {}
local id = 0

function ents.Startup()
	register["box"] = love.filesystem.load( ents.objpath .. "box.lua" )
  register["zepp"] = love.filesystem.load( ents.objpath .. "zepp.lua" )
end

function ents.Derive(name)
	return love.filesystem.load( ents.objpath .. name .. ".lua" )()
end

function ents.Create(name, x, y)
	if not x then
		x = 0
	end
	
	if not y then
		y = 0
	end
	
	if register[name] then
		id = id + 1
		local ent = register[name]()
		ent:load()
		ent:setPos(x, y)
		ent.id = id
		ents.objects[#ents.objects + 1] = ent
		return ents.objects[#ents.objects]
	else
		print("Error: Entity " .. name .. " does not exist! Snap!")
		return false;
	end
end

function ents.Destroy(id)
  if ents.objects[id] then
    if ents.objects[id].Die then
      ents.objects[id]:Die()
    end
    ents.objects[id] = nil
  end
end

function ents:update(dt)
	for i, ent in pairs(ents.objects) do
		if ent.update then
			ent:update(dt)
		end
	end
end

function ents:draw()
	for i, ent in pairs(ents.objects) do
		if ent.draw then
			ent:draw()
		end
	end
end