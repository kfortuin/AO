require "gui"
require "func/btn"
require "lvl/lvl"

window = gui.create_window()
window.title = "Adfailture v2"
window.width = 900
window.height = 500
window.x = 10
window.y = 50

level = "strand"
load_label1()
create_button1()
create_button2()
create_button3()
load_inventory()
loadlevel1()


inventorySleutel = 0
inventorySchep = 0

if level == "strand" then 
  button1.text = "Ga de zee in"
  button2.text = "Ga het bos in"
  button3.text = "Pak de schep"
  label1.text = "Je staat op een rotsachtig strand.\nIn de verte op zee zie je een boot.\nJe ziet ook een pad naar het bos.\nVerder zie je een schep liggen.\n\nWat doe je?"
elseif level == "zee" then 
  button1.text = "Terug naar het strand"
  button2.text = "Pak de sleutel"
  button3.y = -200
  label.text = "Je ligt nu in de zee\nIn de verte op zee zie je een boot.\nJe ziet iets glimmen onder water\nJe kan ook terug het strand op\n\nWat doe je?"
end



gui.run()