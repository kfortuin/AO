require "player"

function love.load()
  love.graphics.getBackgroundColor(255,255,255)
  
  groundLevel = 600
  gravity = 400
  jump_height = 300
  
  -- Loading classes
  player.load()
end

function love.update(dt)
  update_player(dt)
end
 
function love.draw()
  draw_player()
end
 