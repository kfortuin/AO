require 'robot_arm'
robot_arm: load_level ("exercise 11")
robot_arm.speed = 0.9
red = 0
blue = 0
white = 0
green = 0
movecolor = ""
step = 9
stop = false

print("Checking blocks..") 
for i = 2, 10 do
  robot_arm: move_right()
  robot_arm: grab()
  robot_arm: scan()
  color = robot_arm: scan()
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
print("Done.")
print("Red blocks: ".. red)
print("Blue blocks: " .. blue)
print("Green blocks: " .. green)
print("White blocks: " .. white)
print("Most blocks are "..movecolor)
print("Please wait while I rearrange the mess you made..")
 while stop == false do
    robot_arm: grab()
    color = robot_arm: scan()
    if color == movecolor then
      for i = 1, step do
        robot_arm: move_left()
      end 
    step = step - 1
      robot_arm: drop()
      for i = 1, step do
        robot_arm: move_right()
      end
    else
      robot_arm: drop()
      robot_arm: move_left()
      step = step - 1
    end
    if step == 0 then
      stop = true
    print("Done. Please be more careful next time ( ͡° ͜ʖ ͡°)")
    end
 end    