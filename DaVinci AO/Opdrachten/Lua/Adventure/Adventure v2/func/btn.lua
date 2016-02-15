function load_label1()
  label1 = window:add_label(text)
  label1.x = 5
  label1.y = 10
end

function create_button1()
  button1 = window:add_button()
  button1.x = 10
  button1.y = 150
  button1.width = 150
  function button1: on_click()
    if level == "strand" then
      loadlevel2()
      level = "zee"
      print(level)
    elseif level == "zee" then   
      level = "strand"
      loadlevel1()
      print(level)
    end
  end
end



function create_button2()
  button2 = window:add_button()
  button2.x = 10
  button2.y = 190
  button2.width = 150
  function button2: on_click()
  --if level == "strand" then
    --loadlevel3()
  if level == "zee" then
    inventorySleutel = 1
    label1.text = "Je hebt nu de sleutel. \nDeze komt mischien wel goed van \npas, je weet het maar nooit."
    imageBG.file_name = "images/underwater_nokey.png"
    invSleutel = window: add_label()
    invSleutel.x = 5
    invSleutel.y = 340
    invSleutel.text = "Sleutel"
  end
end
  
end

function create_button3()
  button3 = window:add_button()
  button3.x = 10
  button3.y = 230
  button3.width = 150
  function button3: on_click()
    if level == "zee" then
      inventorySchep = 1
      label1.text = "Je hebt de schep opgepakt. \n Je kunt hiermee mischien wel\nde schatkist uitgraven.\n\nWat wil je nu doen?"
      button3.text = "Graaf de kist uit."
      function button3: on_click()
        if button3.text == "Graaf de kist uit." then
        imageBG.file_name= "image/rocky_beach_chest_dug.png"
        end
      end
    end
  end
end
function load_inventory()
  labelInventory = window: add_label()
  labelInventory.x = 5
  labelInventory.y = 300
  labelInventory.text = "Inventaris"

  labelDivider = window: add_label()
  labelDivider.x = 5
  labelDivider.y = 320
  labelDivider.text = "--------------------------------------"
end
