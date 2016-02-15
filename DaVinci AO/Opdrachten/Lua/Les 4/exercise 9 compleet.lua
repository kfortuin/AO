require('robot_arm')
robot_arm:load_level('exercise 9')
robot_arm.speed = 0.95
getal = 0
for i = 1, 4 do
getal = getal +1
for i = 1, getal do
  robot_arm: grab()
for i = 1, 5 do
robot_arm: move_right()
end
robot_arm: drop()
for i = 1, 5 do
  robot_arm: move_left()
end 
end 
robot_arm: move_right()
end