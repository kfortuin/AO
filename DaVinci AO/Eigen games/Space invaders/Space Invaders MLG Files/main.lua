love.window.setTitle("M4in M3nu")
menu_bg = love.graphics.newImage("img/loading.gif")
menu_music = love.audio.newSource("sound/mainmenumusic.mp3")
love.audio.play(menu_music)

function love.update(dt)
  if love.keyboard.isDown("e") then
    require "data/game"
    love.audio.stop(menu_music)
    love.load()
  end
  
  if love.keyboard.isDown("r") then
    package.loaded.myModule = nil
    love.filesystem.load('data/game.lua') ()
    love.load()
  end
end

function love.draw()
  love.graphics.draw(menu_bg, 275, 10, 0, 1.5)
  love.graphics.print("Press 'E' to start the game", 150, 500, 0, 3)
end
