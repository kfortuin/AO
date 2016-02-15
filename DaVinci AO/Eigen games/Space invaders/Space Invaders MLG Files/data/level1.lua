package.loaded.myModule = game
love.graphics.setDefaultFilter('nearest', 'nearest')
love.window.setTitle('Space Invaders (MLG edition)')
enemy = {}
enemies_controller = {}
enemies_controller.enemies = {}
enemies_controller.image = love.graphics.newImage('img/enemy2.png')

function checkCollisions(enemies, bullets)
  for i,e in ipairs(enemies) do
    for c,b in ipairs(bullets) do
      if b.y <= e.y + e.height and b.x > e.x-3 and b.x < e.x + e.width and e.y < player.y then
        table.remove(enemies, i)
        love.audio.play(sound_hit)
        table.remove(bullets, c)
      end  
    end  
  end  
end  

function love.load()
  sound_hit = love.audio.newSource('sound/hitmarker_sound.wav')
  doge_image = love.graphics.newImage('img/doge.jpeg')
  bg_music = love.audio.newSource('sound/gamewin2.mp3')
  love.audio.play(bg_music)
  game_over = false
  gameovermusic = love.audio.newSource('sound/gameover.mp3')
  gamewinmusic = love.audio.newSource('sound/gamewin2.mp3')
  background_image = love.graphics.newImage('img/background.png')
  player = {}
  player.x = 70
  player.y = 100
  player.bullets = {}
  player.cooldown = 20
  player.speed = 2
  player.image = love.graphics.newImage('img/lenny.png')
  player.fire_sound = love.audio.newSource('sound/laser_sound2.wav')
  player.fire = function()
    if player.cooldown <= 0 then
      love.audio.play(player.fire_sound)
      player.cooldown = 20
      bullet = {}
      bullet.x = player.x + 4
      bullet.y = player.y + 4
      table.insert(player.bullets, bullet)
    end 
  end
  
  for i=0, 7 do
    enemies_controller:spawnEnemy(i * 20, 0)
  end
end

function enemies_controller:spawnEnemy(x, y)
  enemy = {}
  enemy.x = x
  enemy.y = y
  enemy.width = 18   
  enemy.height = 20   
  enemy.bullets = {}
  enemy.cooldown = 20
  enemy.speed = 0.15
  table.insert(self.enemies, enemy)
end   

function enemy:fire()
  if self.cooldown <= 0 then
    self.cooldown = 20
    bullet = {}
    bullet.x = self.x + 35
    bullet.y = self.y
    table.insert(self.bullets, bullet)
  end
end

function love.update(dt)
  player.cooldown = player.cooldown - 1
  if love.keyboard.isDown("d") or love.keyboard.isDown("right") then
    if player.x == 150 then
      player.x = player.x + 0
    else
      player.x = player.x + player.speed
    end
  elseif love.keyboard.isDown("a") or love.keyboard.isDown("left") then
    if player.x == 0 then
      player.x = player.x - 0
    else
      player.x = player.x - player.speed
    end
  end 
  
  
  
  if love.keyboard.isDown(" ") then
    player.fire()
  end
  
  if love.keyboard.isDown("r") then
    love.audio.stop(bg_music, gamewinmusic, gameovermusic)
    game_win = false
    game_over = false
    package.loaded.myModule = nil
    love.filesystem.load('data/level1.lua') ()
    love.load()
  end  
  
  if love.keyboard.isDown("e") and game_win == true then
    love.audio.stop(bg_music, gamewinmusic, gameovermusic)
    game_win = false
    game_over = false
    package.loaded.myModule = nil
    love.filesystem.load('data/level2.lua') ()
    love.load()
  end 
   
  if #enemies_controller.enemies == 0 then
    --Win
    game_win = true
    --love.audio.play(gamewinmusic)
    --love.audio.stop(bg_music)
  end
  
  for _,e in pairs(enemies_controller.enemies) do
    if e.y >= love.graphics.getHeight()/5 then
      --Lose
      game_over = true
      love.audio.play(gameovermusic)
      love.audio.stop(bg_music)
    end 
    e.y = e.y + 1 * enemy.speed
  end  
  
  for i,b in ipairs(player.bullets) do
    if b.y < -10 then
      table.remove(player.bullets, i)
    end
    b.y = b.y - 2
  end  
  
  checkCollisions(enemies_controller.enemies, player.bullets)
end

function love.draw()
  love.graphics.scale (5)
  love.graphics.draw(background_image)
  if game_over then
  love.graphics.print("Press 'R' to start again", 45, 110, 0, 0.5)
    love.graphics.print("Game Over!")
    return
  elseif game_win then
    love.graphics.print("Press 'R' to start again", 45, 50, 0, 0.5)
    love.graphics.print("Press 'E' to continue to level 2", 35, 70, 0, 0.5)
    --love.graphics.print("Much win. Such wow", 10)
    --love.graphics.draw(doge_image, 25, 20, 0, 0.2, 0.15)
  end
  
  --Draw player
  love.graphics.setColor(255, 255, 255)
  love.graphics.draw(player.image, player.x-8, player.y+3, 0, 0.2, 0.15)
  
  --Draw enemy
  for _,e in pairs(enemies_controller.enemies) do
    love.graphics.draw(enemies_controller.image, e.x, e.y, 0, 0.02, 0.025)
  end    
  
  --Draw bullets
  love.graphics.setColor(255, 255, 255)
  for _,b in pairs(player.bullets) do
    love.graphics.rectangle("fill", b.x, b.y, 2, 2)
  end
end