require "gui"

local window = gui.create_window()
window.width = 300
window.title = "Calculator 4000"
firstinput = 0
secondinput = 0

screen = window: add_text_box()
screen.x = 8
screen.y = 8
screen.width = 285

button7 = window: add_button()
button7.x = 15
button7.y = 50
button7.height = 60
button7.width = 60
button7.text = "7"

button8 = window: add_button()
button8.x = 85
button8.y = 50
button8.height = 60
button8.width = 60
button8.text = "8"

button9 = window: add_button()
button9.x = 155
button9.y = 50
button9.height = 60
button9.width = 60
button9.text = "9"

buttonadd = window: add_button()
buttonadd.x = 225
buttonadd.y = 50
buttonadd.height = 60
buttonadd.width = 60
buttonadd.text = "+"

button4 = window: add_button()
button4.x = 15
button4.y = 120
button4.height = 60
button4.width = 60
button4.text = "4"

button5 = window: add_button()
button5.x = 85
button5.y = 120
button5.height = 60
button5.width = 60
button5.text = "5"

button6 = window: add_button()
button6.x = 155
button6.y = 120
button6.height = 60
button6.width = 60
button6.text = "6"

buttonsubtract = window: add_button()
buttonsubtract.x = 225
buttonsubtract.y = 120
buttonsubtract.height = 60
buttonsubtract.width = 60
buttonsubtract.text = "-"

button1 = window: add_button()
button1.x = 15
button1.y = 190
button1.height = 60
button1.width = 60
button1.text = "1"

button2 = window: add_button()
button2.x = 85
button2.y = 190
button2.height = 60
button2.width = 60
button2.text = "2" 

button3 = window: add_button()
button3.x = 155
button3.y = 190 
button3.height = 60
button3.width = 60
button3.text = "3"

buttonmultiply = window: add_button()
buttonmultiply.x = 225
buttonmultiply.y = 190
buttonmultiply.height = 60
buttonmultiply.width = 60
buttonmultiply.text = "x"

buttonclear = window: add_button()
buttonclear.x = 15
buttonclear.y = 260
buttonclear.height = 60
buttonclear.width = 60
buttonclear.text = "c"

button0 = window: add_button()
button0.x = 85
button0.y = 260
button0.height = 60
button0.width = 60
button0.text= "0"

buttonis = window: add_button()
buttonis.x = 155
buttonis.y = 260
buttonis.height = 60
buttonis.width = 60
buttonis.text = "="

buttondivide = window: add_button()
buttondivide.x = 225
buttondivide.y = 260
buttondivide.height = 60
buttondivide.width = 60
buttondivide.text = "/"

  --Button 1--
  function button1: on_click()
    screen.text = screen.text .. 1
  end

  function button2: on_click()
    screen.text = screen.text .. 2
  end

  function button3: on_click()
    screen.text = screen.text .. 3
  end

  function button4: on_click()
    screen.text = screen.text .. 4
  end

  function button5: on_click()
    screen.text = screen.text .. 5
  end

  function button6: on_click()
    screen.text = screen.text .. 6
  end

  function button7: on_click()
    screen.text = screen.text .. 7
  end

  function button8: on_click()
    screen.text = screen.text .. 8
  end

  function button9: on_click()
    screen.text = screen.text .. 9
  end

  function button0: on_click()
    screen.text = screen.text .. 0
  end

  function buttonclear: on_click()
    screen.text = ''
    firstinput = ''
    secondinput = ''
  end

  function buttonadd: on_click()
    firstinput = screen.text
    screen.text = ''
    method = "add"
  end

  function buttonsubtract: on_click()
    firstinput = screen.text
    screen.text = '' 
    method = "subtract"
  end
    
  function buttondivide: on_click()
    firstinput = screen.text
    screen.text = ''
    method = "divide" 
  end

  function buttonmultiply: on_click()
    firstinput = screen.text
    screen.text = '' 
    method = "multiply"
  end

  function buttonis: on_click()
    if method == "add" then
      screen.text = firstinput + screen.text
    elseif method == "subtract" then
      screen.text = firstinput - screen.text
    elseif method == "divide" then
      screen.text = firstinput / screen.text
    elseif method == "multiply" then
      screen.text = firstinput * screen.text
    end
    
    
    
  end
gui.run()