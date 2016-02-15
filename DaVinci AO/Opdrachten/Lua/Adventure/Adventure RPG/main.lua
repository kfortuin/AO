require 'gui'
--require 'lvl'
require 'btn'

window = gui:create_window()
window.title = "Stranded"
window.x = 50
window.y = 100
window.width = 1280
window.height = 720

imageMenu = window: add_image()
imageMenu.x = 0
imageMenu.y = 0
imageMenu.width = 240
imageMenu.height = 720
imageMenu.file_name = "images/menu_border.png"

timerDown = gui.create_timer()
timerDown.interval = 0.1
timerDown:start()
timerUp = gui.create_timer()
timerUp.interval = 0.1
timerUp:start()
timerLeft = gui.create_timer()
timerLeft.interval = 0.1
timerLeft:start()
timerRight = gui.create_timer()
timerRight.interval = 0.1
timerRight:start()
timerSpace = gui.create_timer()
timerSpace.interval = 0.1
timerSpace:start()

imageBG = window: add_image()
imageBG.x = 240
imageBG.y = 0
imageBG.width = 1040
imageBG.height = 720

function buttonSwap()
imageBoy = window: add_image()
  function timerSpace:on_tick()
    if gui.keyboard.key_down.space then
      imageBoy.file_name = "images/Character Boy Smile.png"
    else
      imageBoy.file_name = "images/Character Boy.png"
    end
  end
imageBoy.x = 260
imageBoy.file_name = "images/Character Boy.png"
end

function load_level1()
  imageBG.file_name = "images/rocky_beach_chest_shovel.png"
  imageBG.width = 1040
  imageBG.height = 720
  imageBoy.x = imageBoy.x
  imageBoy.y = 0
  level = "1"
end


function load_level2()
  imageBG.file_name = "images/underwater_key.png"
  imageBG.width = 1040
  imageBG.height = 720
  imageBoy.x = imageBoy.x
  imageBoy.y = 0
  level = "2"
end

function grab_key()
  if level == "2" and imageBoy.y == 505 and imageBoy.x >= 944 then
    inventoryKey = true
    popup = true
    labelPopUp.text = "You grabbed a key!"
    imageBG.file_name = "images/underwater_nokey.png"
  end
end

--Functions
buttonSwap()
grab_key()
load_level1()

labelArrows = window: add_label()
labelArrows.y = 200
labelArrows.x = 15
labelArrows.text = "You can use the W,A,S,D keys to \nmove Steve \n\n\nPress Spacebar to smile! :D"
labelArrows.background_color = { 1.0 , 1.0 , 1.0}



labelPopUp = window: add_label()
function move_popup()
  labelPopUp.x = imageBoy.x + 30
  labelPopUp.y = imageBoy.y + 15
  labelPopUp.text = " Steve \n    V"
end

--Up
buttonUp = window: add_button()
buttonUp.x = 70
buttonUp.y = 30
buttonUp.text = "Up"
function buttonUp: on_click()
  --print(imageBoy.y)
  if imageBoy.y <= -1 then
    imageBoy.y = imageBoy.y - 0
  else
    imageBoy.y = imageBoy.y - 50,5
  end
    
  if imageBoy.y <= -1 then
    load_level1()
    level = "1"
    imageBoy.y = 505
    print("Level " ..level)
  end
  move_popup()
end
--Keyboard W 
function timerUp:on_tick()
  if gui.keyboard.key_down.w then
    if imageBoy.y <= -1 then
      imageBoy.y = imageBoy.y - 0
    else
      imageBoy.y = imageBoy.y - 50,5
    end
    
    if imageBoy.y <= -1 then
      load_level1()
      level = "1"
      imageBoy.y = 505
      print("Level " ..level)
    end
    move_popup()
  end
end

--Left
buttonLeft = window: add_button()
buttonLeft.x = 10
buttonLeft.y = 75
buttonLeft.text = "Left"
function buttonLeft: on_click()
  --print(imageBoy.x)
  if imageBoy.x == 260 then
    imageBoy.x = imageBoy.x - 0
  else
    imageBoy.x = imageBoy.x - 85
  end
  move_popup()
end
--Keyboard A
function timerLeft:on_tick()
  if gui.keyboard.key_down.a then
      if imageBoy.x == 260 then
    imageBoy.x = imageBoy.x - 0
  else
    imageBoy.x = imageBoy.x - 85
  end
  move_popup()
  end
end

--Right
buttonRight = window: add_button()
buttonRight.x = 130
buttonRight.y = 75
buttonRight.text = "Right"
function buttonRight: on_click()
  print(imageBoy.x)
  if imageBoy.x == 1110 then
    imageBoy.x = imageBoy.x + 0
  else
    imageBoy.x = imageBoy.x + 85
  end
  move_popup()
end
--Keyboard D
function timerRight:on_tick()
  if gui.keyboard.key_down.d then
      if imageBoy.x == 1110 then
    imageBoy.x = imageBoy.x + 0
  else
    imageBoy.x = imageBoy.x + 85
  end
  move_popup()
  end
end

--Down
buttonDown = window: add_button()
buttonDown.x = 70
buttonDown.y = 120
buttonDown.text = "Down"
function buttonDown: on_click()
  --print(imageBoy.y)
  if imageBoy.y >= 506 then
    imageBoy.y = imageBoy.y + 0
  else
    imageBoy.y = imageBoy.y + 50,5
  end
    
  if imageBoy.y >= 506 then
    load_level2()
    level = "2"
    print("Level " ..level)
  end
  move_popup()
end
--Keyboard S
function timerDown:on_tick()
  if gui.keyboard.key_down.s then
      if imageBoy.y >= 506 then
    imageBoy.y = imageBoy.y + 0
  else
    imageBoy.y = imageBoy.y + 50,5
  end
    
  if imageBoy.y >= 506 then
    load_level2()
    level = "2"
    print("Level " ..level)
  end
  move_popup()
  end
end


gui.run()