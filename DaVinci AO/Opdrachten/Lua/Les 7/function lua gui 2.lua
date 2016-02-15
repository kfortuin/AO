require 'gui'
window = gui.create_window()
window.title = 'Ja klikker'

  buttonreset = window: add_button()
  buttonreset.x = 50
  buttonreset.y = 50
  buttonreset.text = 'Reset'

  button1 = window: add_button()
  button1.x = 50
  button1.y = 150
  button1.text = 'Nee'

  button2 = window: add_button()
  button2.x = 160
  button2.y = 150
  button2.text = 'Nee'

  button3 = window: add_button()
  button3.x = 50
  button3.y = 200
  button3.text = 'Nee'

  button4 = window: add_button()
  button4.x = 160
  button4.y = 200
  button4.text = 'Nee'

  notification = window: add_label()
  notification.x = 50
  notification.y = 250
  notification.text = "All buttons need to be in a Yes state."

--Button 1--
  function button1: on_click()
      if button1.text == "Ja" then
        button1.text = "Nee" 
      else
        button1.text = "Ja"
      end
       
      if button2.text == "Ja" then
        button2.text = "Nee" 
      else
        button2.text = "Ja" 
      end
      check()
  end

--Button 2--
  function button2: on_click()
      if button2.text == "Ja" then
        button2.text = "Nee"
      else
        button2.text = "Ja" 
      end
      
      if button4.text == "Ja" then
        button4.text = "Nee"
      else
        button4.text = "Ja" 
      end
      check()
  end

--Button 3--
  function button3: on_click()
      if button2.text == "Ja" then
        button2.text = "Nee"
      else
        button2.text = "Ja" 
      end 
     
     if button3.text == "Ja" then
        button3.text = "Nee"
      else
        button3.text = "Ja" 
      end
     
     if button4.text == "Ja" then
        button4.text = "Nee"
      else
        button4.text = "Ja" 
      end 
      check()
  end

--Button 4--
  function button4: on_click()
      if button1.text == "Ja" then
        button1.text = "Nee"
      else
        button1.text = "Ja" 
      end 
      
      if button2.text == "Ja" then
        button2.text = "Nee"
      else
        button2.text = "Ja" 
      end
      
      if button4.text == "Ja" then
        button4.text = "Nee"
      else
        button4.text = "Ja" 
      end
      check()
  end 
  
--check--
  function check()
    if button1.text == "Ja" and
        button2.text == "Ja" and
        button3.text == "Ja" and
        button4.text == "Ja" then
         
        notification.text = "Good job! Hit reset to go again."
      else
        notification.text = "All buttons need to be in a Yes state."
    end
  end

--Reset--
  function buttonreset: on_click()
    button1.text = "Nee"
    button2.text = "Nee"
    button3.text = "Nee"
    button4.text = "Nee"
    notification.text = "All buttons need to be in a Yes state."
  end 
gui.run()