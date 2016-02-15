require 'gui'
window = gui.create_window()
window.title = 'Ja klikker'

knop1 = window: add_button()
knop1.x = 50
knop1.y = 50
knop1.text = 'Nee'

function knop1: on_click()
  knop1.text = "Ja"
end

gui.run()