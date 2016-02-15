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

  notification = window: add_label()
  notification.x = 50
  notification.y = 250
  notification.text = "Hoi"


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
  end

function button1: on_click()
  if notification.text == "Hoi" then
    notification.text = "Doei"
  else
    notification.text = "Hoi"
    end
end
gui.run()