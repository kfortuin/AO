require 'robot_arm'
robot_arm: load_level ("exercise 11")
robot_arm.speed = 0.95
red = 0
blue = 0
white = 0
green = 0
movecolor = ""
step = 10
stop = false


for i = 2, 10 do
  robot_arm: move_right()
  robot_arm: grab()
  robot_arm: scan()
  color = robot_arm: scan()
  --print(robot_arm: scan())
  robot_arm: drop()
  if color == "red" then
    red = red + 1
    elseif color == "blue" then
      blue = blue + 1 
      elseif color == "green" then
        green = green + 1  
        elseif color == "white" then
          white = white + 1  
      end
  if red >= green and
    red >= white and
      red >= blue then 
        movecolor = "red"
    else
      if
    green >= white and
      green >= blue then
        movecolor = "green"
    else
      if white >= blue then
        movecolor = "white"
      else 
        movecolor = "blue"
      end
    end
  end
end
print("red ".. red)
print("blue " .. blue)
print("green " .. green)
print("white " .. white)
print("Most blocks are "..movecolor)

 while stop == false do
   --print ("hoi")
  --for i = 1, 15 do
    robot_arm: grab()
    color = robot_arm: scan()
    --print(robot_arm: scan())
    if color == movecolor then
      start = step
      
      print(step)
      while step > 0 do
        robot_arm: move_left()
        step = step -1
      end
      
      robot_arm: drop()
    
      if color == "red" then
      
        red = red - 1
        print("red "..red)
      
      elseif color == "blue" then
        
        blue = blue - 1
        print("blue "..blue)
      
      elseif color == "green" then
      
        green = green - 1
        print("green "..green)
        
      elseif color == "white" then
        
        white = white - 1
        print("white "..white)
      end
      
      if movecolor == 0 then
        stop = true
      end        
      

      for i = 1, start - 1 do
        robot_arm: move_right()
      end
      
      step = step - 1
      --print (stop)
    else
      robot_arm: drop()
      robot_arm: move_left()
      step = step - 1
    end
  --end
end