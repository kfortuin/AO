require "gui"

window = gui.create_window()
window.title = "Adfailture"
window.width = 900
window.height = 500
window.x = 10
window.y = 10

inventorySchep = false
inventoryKey = false
screenZee = 0


label1 = window:add_label(text)
label1.x = 5
label1.y = 10
label1.text = "Je staat op een rotsachtig strand.\nIn de verte op zee zie je een boot.\nJe ziet ook een pad naar het bos.\nVerder zie je een schep liggen.\n\nWat doe je?"

buttonBos = window:add_button()
buttonBos.x = 10
buttonBos.y = 150
buttonBos.width = 150
buttonBos.text = "1) Ga naar het bos."


buttonZee = window:add_button()
buttonZee.x = 10
buttonZee.y = 190
buttonZee.width = 150
buttonZee.text = "2) Zwem de zee in."

buttonSchep = window:add_button()
buttonSchep.x = 10
buttonSchep.y = 230
buttonSchep.width = 150
buttonSchep.text = "3) Pak de schep op"
knopSchep = true



labelInventory = window: add_label()
labelInventory.x = 5
labelInventory.y = 300
labelInventory.text = "Inventaris"

labelDivider = window: add_label()
labelDivider.x = 5
labelDivider.y = 320
labelDivider.text = "--------------------------------------"

imageBG = window:add_image()
imageBG.file_name = "images/rocky_beach_chest_shovel.png"
imageBG.x = buttonBos.width + 90
imageBG.y = 00


function buttonBos:on_click()
  print("Ga het bos in")
  
end

function buttonZee:on_click()
  screenZee = 1
  buttonBos.width = 0
  buttonZee.width = 0
  if knopSchep == true then
    buttonSchep.width = 0
  end
  
  
  if screenZee == 1 then
    

        
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
      invSleutel.y = 360
      invSleutel.text = "Sleutel"
    end

    function buttonStrand: on_click()
     screenZee = 0
     print(screenZee)
     if screenZee == 0 then
        
     end
  end
    end
    
end

function buttonSchep: on_click()
  inventorySchep = true
  label1.text = "Je hebt de schep opgepakt.\nJe kunt hiermee mischien wel\nde schatkist uitgraven.\n\nWat wil je nu doen?"
  buttonSchep.width = 0
  buttonKist = window: add_button()
  buttonKist.x = 10
  buttonKist.y = 230
  buttonKist.width = 150
  buttonKist.text = "3) Graaf de kist uit"
    --[OPGEGRAVEN SCHATKIST]--
    function buttonKist: on_click()
      buttonKist: destroy()
      inventorySchep = false
      imageBG.file_name = "images/rocky_beach_chest_dug.png"
      invSchep: destroy()
      if inventoryKey == false then
          label1.text = "Je hebt de schatkist uitgegraven.  \nDe schep brak tijdens het \nopgraven. Er zit een slot op, maar \nje hebt de sleutel helaas niet. \n\nWat wil je nu doen?"
        else
          label1.text = "Je hebt de schatkist uitgegraven. \nDe schep brak tijdens het \nopgraven. Er zit een slot op. \nJe hebt de sleutel al. \n\nWil je de kist openmaken?"
      
        buttonOpen = window: add_button()
        buttonOpen.x = 10
        buttonOpen.y = 230
        buttonOpen.width = 150
        buttonOpen.text = "3) Open de kist"
        function buttonOpen: on_click()
            require "levels/kist"
           
       
      end
    end
  end
       
  imageBG.file_name = "images/rocky_beach_chest.png"
  invSchep = window: add_label()
  invSchep.x = 5
  invSchep.y = 340
  invSchep.text = "Schep"
end 
gui.run()
