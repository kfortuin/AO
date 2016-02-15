function love.load()
	player = {} -- nice and organised.
		player.x = 0
		player.y = 0
		player.image = love.graphics.newImage("hamster.png") -- let's just re-use this sprite.
    player.y_velocity = 0
   
 
	winW, winH = love.graphics.getWidth(), love.graphics.getHeight() -- this is just
	-- so we can draw it in a fabulous manner.
  gravity = 400
	jump_height = 300
	
end
 
 function love.update(dt)
	if player.y_velocity ~= 0 then -- we're probably jumping
		player.y = player.y + player.y_velocity * dt -- dt means we wont move at
		-- different speeds if the game lags
		player.y_velocity = player.y_velocity - gravity * dt
		if player.y < 0 then -- we hit the ground again
			player.y_velocity = 0
			player.y = 0
		end
	end
end
 
function love.keypressed(key)
	if key == " " then
		if player.y_velocity == 0 then -- we're probably on the ground, let's jump
			player.y_velocity = jump_height
		end
	end
end
 
function love.draw()
	love.graphics.rectangle("fill", 0, winH / 2, winW, winH / 2)
	love.graphics.translate(winW / 2, winH / 2) -- you don't need to understand this
 
	love.graphics.draw(player.image, player.x, -player.y, 0, 1, 1, 64, 103) -- trust me
	-- on the origin position. just trust me.
end