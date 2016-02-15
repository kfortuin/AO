require 'robot_arm'
robot_arm: random_level(1)
robot_arm.speed = 0.9
stop = false
stap = 1
while stop == false do
  robot_arm: grab()
  color = robot_arm: scan() 
  if color == nil then
    stop = true
  else
    for i = 1, stap do
      robot_arm: move_right()
    end
    robot_arm: drop()
    for i = 1, stap do
      robot_arm: move_left()
    end
    stap = stap + 1
  end
end