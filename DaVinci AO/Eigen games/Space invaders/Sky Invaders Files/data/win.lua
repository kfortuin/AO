function love.load()
  background_image = love.graphics.newImage('img/background.png')
end

function love.update()
  
  if love.keyboard.isDown("r") then
    package.loaded.myModule = nil
    love.filesystem.load('data/level1.lua') ()
    love.load()
  end
end

function love.draw()
  love.graphics.scale (5)
  love.graphics.draw(background_image, 0, 0, 0, 0.80)   love.graphics.print("Congratulations! You won! But our planet is in \nanother universe", 0, 0, 0, 0.5)
  love.graphics.print("Press 'R' to restart the game", 40, 50, 0, 0.5)
end
