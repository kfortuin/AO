require "gui"

window = gui.create_window()
window.title = "Adfailture"
window.width = 900
window.height = 500
window.x = 10
window.y = 10

label1 = window:add_label(text)
label1.x = 5
label1.y = 10
label1.text = "Je ligt nu in de zee\nIn de verte op zee zie je een boot.\nJe ziet iets glimmen onder water\nJe kan ook terug het strand op\n\nWat doe je?"

buttonStrand = window:add_button()
buttonStrand.x = 10
buttonStrand.y = 150
buttonStrand.width = 150
buttonStrand.text = "1) Terug naar strand"


buttonSleutel = window:add_button()
buttonSleutel.x = 10
buttonSleutel.y = 190
buttonSleutel.width = 150
buttonSleutel.text = "2) Pak de sleutel"





labelInventory = window: add_label()
labelInventory.x = 5
labelInventory.y = 300
labelInventory.text = "Inventaris"

labelDivider = window: add_label()
labelDivider.x = 5
labelDivider.y = 320
labelDivider.text = "--------------------------------------"

imageBG = window:add_image()
imageBG.file_name = "images/underwater_key.png"
imageBG.x = buttonStrand.width + 90
imageBG.y = 00

function buttonSleutel: on_click()
  inventoryKey = true
  buttonSleutel: destroy()
  label1.text = "Je hebt nu de sleutel. \nDeze komt mischien wel goed van \npas, je weet het maar nooit."
  imageBG.file_name = "images/underwater_nokey.png"
  inventoryKey = true
  invSleutel = window: add_label()
  invSleutel.x = 5
  invSleutel.y = 340
  invSleutel.text = "Sleutel"
end

function buttonStrand: on_click()
  window:close()
  require "../adfailture"
end

