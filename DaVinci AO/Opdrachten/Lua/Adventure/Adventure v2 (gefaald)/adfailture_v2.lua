require "gui"
require "func/btn"
require "lvl/lvl"

window = gui.create_window()
window.title = "Adfailture v2"
window.width = 900
window.height = 500
window.x = 10
window.y = 50

function level_check()
  if stateStrand == 1 then 
    button1.text = "Ga de zee in"
    button2.text = "Ga het bos in"
    button3.text = "Pak de schep"
    label1.text = "Je staat op een rotsachtig strand.\nIn de verte op zee zie je een boot.\nJe ziet ook een pad naar het bos.\nVerder zie je een schep liggen.\n\nWat doe je?"
  elseif stateStrand == 2 then
    label1.text = "Je hebt de schep opgepakt. \n Je kunt hiermee mischien wel\nde schatkist uitgraven.\n\nWat wil je nu doen?"
    button3.text = "Graaf de kist uit."
  elseif stateStrand == 3 then
    button3.text = "Open de kist"
    label1.text = "Je hebt de schatkist uitgegraven"
  end
    



  if stateZee == 1 then 
      button1.text = "Terug naar het strand"
      button2.text = "Pak de sleutel"
      button3.text = ""
      label1.text = "Je ligt nu in de zee\nIn de verte op zee zie je een boot.\nJe ziet iets glimmen onder water\nJe kan ook terug het strand op\n\nWat doe je?"
    elseif stateZee == 2 then
      label1.text = "Je hebt nu de sleutel. \nDeze komt mischien wel goed van \npas, je weet het maar nooit."
      button2.text = ""
  end
end

level = "strand"
load_label1()
create_button1()
create_button2()
create_button3()
load_inventory()
loadlevel1()
level_check()

inventorySleutel = 0
inventorySchep = 0
  
gui.run()