require 'robot_arm'
robot_arm: random_level(4)
robot_arm.speed = 0.9

print("Welke kolom wil je verplaatsen?")
print("Kies een getal van 1 tot 4")
answer = io.read()
stop = false

if answer == "1" then
  while stop == false do
    robot_arm: grab()
    color = robot_arm: scan()
    if color == nill then
      stop = true
     else 
      for i = 1, 8 do
        robot_arm: move_right()
      end
      robot_arm: drop()
      for i = 1, 8 do
        robot_arm: move_left()
      end
    end
  end
  
elseif answer == "2" then
    robot_arm: move_right()
  while stop == false do
    robot_arm: grab()
    color = robot_arm: scan()
    if color == nill then
      stop = true
    else
      for i = 2, 8 do
        robot_arm: move_right()
      end
      robot_arm: drop()
      for i = 2, 8 do
        robot_arm: move_left()
      end
    end
  end
  
elseif answer == "3" then
  
  for a = 1, 2 do
    robot_arm: move_right()
  end
  while stop == false do
    robot_arm: grab()
    color = robot_arm: scan()
    if color == nill then
      stop = true
    else
      for i = 3, 8 do
        robot_arm: move_right()
      end
      robot_arm: drop()
      for i = 3, 8 do
        robot_arm: move_left()
      end
    end
  end
  
elseif answer == "4" then

  for b = 1, 3 do
    robot_arm: move_right()
  end
  
  while stop == false do
    robot_arm: grab()
    color = robot_arm: scan()
    if color == nill then
      stop = true
    else
      for i = 4, 8 do
        robot_arm: move_right()
      end
      robot_arm: drop()
      for i = 4, 8 do
        robot_arm: move_left()
      end
    end
  end
end