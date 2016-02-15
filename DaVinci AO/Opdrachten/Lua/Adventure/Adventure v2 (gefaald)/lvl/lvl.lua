stateStrand = 1

function loadlevel1()
  level = "strand"
  if stateStrand == 1 then 
    --[[button1.text = "Ga de zee in"
    button2.text = "Ga het bos in"
    button3.text = "Pak de schep"
    label1.text = "Je staat op een rotsachtig strand.\nIn de verte op zee zie je een boot.\nJe ziet ook een pad naar het bos.\nVerder zie je een schep liggen.\n\nWat doe je?"]]
    imageBG = window:add_image()
    imageBG.file_name = "images/rocky_beach_chest_shovel.png"
    imageBG.x = button1.width + 90
    imageBG.y = 00
    elseif stateStrand == 2 then
    --[[label1.text = "Je hebt de schep opgepakt. \n Je kunt hiermee mischien wel\nde schatkist uitgraven.\n\nWat wil je nu doen?"
    button3.text = "Graaf de kist uit."]]
    imageBG = window:add_image()
    imageBG.file_name = "images/rocky_beach_chest.png"
    imageBG.x = button1.width + 90
    imageBG.y = 00  
  elseif stateStrand == 3 then
    --[[button3.text = "Open de kist"
    label1.text = "Je hebt de schatkist uitgegraven"]]
    imageBG = window:add_image()
    imageBG.file_name = "images/rocky_beach_chest_dug.png"
    imageBG.x = button1.width + 90
    imageBG.y = 00
  end
end

function loadlevel2()
  level = "zee"
  if stateZee == 1 then 
    --[[button1.text = "Terug naar het strand"
    button2.text = "Pak de sleutel"
    button3.text = ""
    label1.text = "Je ligt nu in de zee\nIn de verte op zee zie je een boot.\nJe ziet iets glimmen onder water\nJe kan ook terug het strand op\n\nWat doe je?"]]
    imageBG = window:add_image()
    imageBG.file_name = "images/underwater_key.png"
    imageBG.x = button1.width + 90
    imageBG.y = 00
  elseif stateZee == 2 then
    inventorySleutel = 1
    --[[label1.text = "Je hebt nu de sleutel. \nDeze komt mischien wel goed van \npas, je weet het maar nooit."
    button2.text = ""]]
    imageBG = window:add_image()
    imageBG.file_name = "images/underwater_nokey.png"
    imageBG.x = button1.width + 90
    imageBG.y = 00
  end
end  