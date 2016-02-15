function playerInit()
  player = {}
  player.x = 80
  player.y = 100
  player.bullets = {}
  player.cooldown = 20
  player.speed = 2
  player.image = love.graphics.newImage('img/player.png')
  player.fire_sound = love.audio.newSource('sound/laser_sound2.wav')
  player.fire = function()
    if player.cooldown <= 0 then
      love.audio.play(player.fire_sound)
      player.cooldown = 20
      bullet = {}
      bullet.x = player.x - 4.75
      bullet.y = player.y - 5 
      table.insert(player.bullets, bullet)
    end 
  end
end
  