require('robot_arm')
robot_arm:load_level('exercise 10') 
robot_arm.speed = 0.99
afstand = 10
for i = 1, 5 do
  afstand = afstand -1
robot_arm: grab()
  for i = 1, afstand do
    robot_arm: move_right()
  end
afstand = afstand -1
robot_arm: drop()
  for i = 1, afstand do
    robot_arm: move_left()
  end
end