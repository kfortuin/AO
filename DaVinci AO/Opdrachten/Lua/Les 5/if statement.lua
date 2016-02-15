require 'robot_arm'
robot_arm:load_level('exercise 11')
robot_arm.speed = 0.95

for i = 1,9 do
  robot_arm: move_right()
end
  for i = 0, 8 do
    robot_arm: grab()
  color = robot_arm: scan()
if color == 'red' then
  for a = 1,i do
  robot_arm: move_right()
  end
  robot_arm: drop() 
  for b = 1, i do
    robot_arm: move_left()
  end
 else 
    robot_arm: drop()
  end
  robot_arm: move_left()
end