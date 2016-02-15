require 'robot_arm'
robot_arm: load_level ("exercise 6") 
robot_arm.speed = 0.9


for i = 1, 7 do
  robot_arm: move_right()
end
  robot_arm: grab()
  for i = 1,5 do
    robot_arm: move_left()
  end
  robot_arm: drop()
  for i = 1, 4 do
    robot_arm: move_right()
  end
  robot_arm: grab()
  for i = 1, 6 do
    robot_arm: move_left()
  end
  robot_arm: drop()
  for i = 1, 5 do
    robot_arm: move_right()
  end
  robot_arm: grab()
  for i = 1, 4 do
    robot_arm: move_left()
  end
  robot_arm: drop()
  for i = 1, 3 do
    robot_arm: move_right()
  end
  robot_arm: grab()
  robot_arm: move_left()
  robot_arm: drop() 