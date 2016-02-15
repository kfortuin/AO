player = {}

function player.load()
  player.x = 5
  player.y = 550
  player.xvel = 0
  player.yvel = 0
  player.friction = 7
  player.speed = 2250
  player.width = 50
  player.height = 50
end
function player.draw()
  love.graphics.setColor(255,0,0)
  love.graphics.rectangle("fill", player.x, player.y, player.width, player.height)
end

function player.physics(dt)
  player.x = player.x + player.xvel * dt
  player.y = player.y + player.yvel * dt
  player.xvel = player.xvel * (1 - math.min(dt*player.friction, 1))
  
  if player.yvel ~= 0 then
    player.y = player.y + player.yvel * dt
    player.y_vel = player.yvel - gravity *dt
    if player.y < 550 then
      player.yvel = 0
      player.y = 550
    end
  end  
end

function player.move(dt)
  if love.keyboard.isDown('right') or love.keyboard.isDown('d') and player.xvel < player.speed then
    player.xvel = player.xvel + player.speed * dt
  end
  if love.keyboard.isDown('left') or love.keyboard.isDown('a') and player.xvel > -player.speed then
    player.xvel = player.xvel - player.speed * dt
  end
  if love.keyboard.isDown('up') or love.keyboard.isDown('w')then
    if player.yvel ~= 0 then
      player.yvel = jump_height
    end  
  end
end  

function love.check()
  if love.keyboard.isDown(' ') then
    print(gravity)
  end
end  

function player.boundary()
  if player.x < 0 then
    player.x = 0
    player.xvel = 0
  end
  if player.y + player.height > groundLevel then
    player.y = groundLevel - player.height
    player.yvel = 0
  end  
end
function update_player(dt)
  player.physics(dt)
  player.move(dt)
  player.boundary()
  love.check()
end
function draw_player()
  player.draw()
end