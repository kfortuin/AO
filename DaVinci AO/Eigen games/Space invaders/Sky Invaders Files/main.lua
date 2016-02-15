love.window.setTitle("Sky Invaders")
menu_bg = love.graphics.newImage("img/splashscreen.png")
--menu_music = love.audio.newSource("sound/mainmenumusic.mp3")
menu_music = love.audio.newSource("sound/music3.mp3")
menu_music:setLooping(true)
menu_music:setVolume(0.3)
love.audio.play(menu_music)

function love.update(dt)
  if love.keyboard.isDown("e") then
    require "data/level1"
    --love.audio.stop(menu_music)
    love.load()
  end
end

function love.draw()
  love.graphics.draw(menu_bg, 25, 100, 0, 1.4)
  love.graphics.print("Press 'E' to start the game", 150, 500, 0, 3)
end
