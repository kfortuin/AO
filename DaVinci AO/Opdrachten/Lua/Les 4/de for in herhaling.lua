require 'robot_arm'
robot_arm:load_level('exercise 6')
robot_arm.speed = 0.99
for i = 1, 7 do
  robot_arm: move_right()
end
for i = 1,8 do
  for i = 1,1 do
    robot_arm: grab()
    robot_arm: move_right()
    robot_arm: drop()
  end
  for i = 1, 2 do
    robot_arm: move_left()
  end
end