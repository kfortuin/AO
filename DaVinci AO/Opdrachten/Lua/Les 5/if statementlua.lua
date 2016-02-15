require 'robot_arm'
robot_arm:load_level('exercise 11')
robot_arm.speed = 0.95

for i = 1,12 do
  robot_arm: move_right()
end
  for i = 1, 12 do
    robot_arm: grab()
  color = robot_arm: scan()
if color == 'white' then
  robot_arm: move_right()
  robot_arm: drop() 
else 
  robot_arm: drop()
end
robot_arm: move_left()
end