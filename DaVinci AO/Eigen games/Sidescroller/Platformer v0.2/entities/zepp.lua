local ent = ents.Derive("base")

function ent:setPos(x, y)
  self.x = x
  self.y = y
  self.fixed_y = y
end

function ent:load(x, y)
  self:setPos(x, y)
  self.image = love.graphics.newImage("textures/zepp.png")
  self.birth = love.timer.getTime() + math.random(0, 128)
  self.size = math.random(4, 6)
end

function ent:update(dt)
    self.y = self.fixed_y + math.sin(love.timer.getTime() - self.birth)*(self.size*3)
    self.x = self.x + (self.size*9)*dt
    
    if (self.x >= 1024) then
      ents.Destroy(self.id)
    end 
end

function ent:Die()
    ents.Create("zepp", - math.random(128, 256), 128)
end

function ent:draw()
  love.graphics.setColor(255,255,255,255)
  love.graphics.draw(self.image, self.x, self.y, 0, self.size/20, self.size/20, 0, 0)
end

return ent;