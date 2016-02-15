require "gui"

local window = gui.create_window()
window.title = "Calculator 3000"

first = window: add_label()
first.x = 8
first.y = 8
first.width = 100
first.text = "First number:"

firstinput = window: add_text_box()
firstinput.x = 130
firstinput.y = 8
firstinput.width = 150

second = window: add_label()
second.x = 8
second.y = 48
second.width = 115
second.text = "Second number:"

secondinput = window: add_text_box()
secondinput.x = 130
secondinput.y = 48
secondinput.width = 150

divider = window: add_label()
divider.x = 125
divider.y = 72
divider.height = 22,5
divider.text = "--------------------------"

total = window: add_label()
total.x = 8
total.y = 96
total.width = 115
total.text = "Total: "

totaloutput = window: add_text_box()
totaloutput.x = 130
totaloutput.y = 96
totaloutput.width = 150

add = window: add_button()
add.x = 8
add.y = 128
add.text = "Add"

subtract = window: add_button()
subtract.x = 130
subtract.y = 128
subtract.text = "Subtract"

divide = window: add_button()
divide.x = 254
divide.y = 128
divide.text = "Divide"

multiply = window: add_button()
multiply.x = 378
multiply.y = 128
multiply.text = "Multiply"

reset = window: add_button()
reset.x = 8
reset.y = 190
reset.text = "Reset"

function add: on_click()
  totaloutput.text = firstinput.text + secondinput.text
end

function subtract: on_click()
  totaloutput.text = firstinput.text - secondinput.text
end

function divide: on_click()
  totaloutput.text = firstinput.text / secondinput.text
end

function multiply: on_click()
  totaloutput.text = firstinput.text * secondinput.text
end


function reset: on_click()
  firstinput.text = ""
  secondinput.text = ""
  totaloutput.text = ""
end

gui.run()