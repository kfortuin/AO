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
    elseif level == "zee" then
      loadlevel1()
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
      stateZee = 2
      imageBG.file_name = "images/underwater_nokey.png"
      invSleutel = window: add_label()
      invSleutel.x = 5
      invSleutel.y = 400
      invSleutel.text = "Sleutel"
      print(stateZee)
    end
  end
end

function create_button3()
  button3 = window:add_button()
  button3.x = 10
  button3.y = 230
  button3.width = 150
  function button3: on_click()
    if level == "strand" then
      inventorySchep = 1
      imageBG.file_name = "images/rocky_beach_chest.png"
      stateStrand = 2
      invSchep = window: add_label()
      invSchep.x = 5
      invSchep.y = 340
      invSchep.text = "Schep"
      level_check()
      function button3: on_click()
        if stateStrand == 2 then
          imageBG.file_name= "images/rocky_beach_chest_dug.png"
          stateStrand = 3
          level_check()
          if imageBG.file_name == "images/rocky_beach_chest_dug.png" then
            invSchep = window: add_label()
            invSchep.x = 5
            invSchep.y = 340
            invSchep.text = "Schep"
            function button3: on_click()
              if inventorySleutel == 1 then
                imageBG.file_name = "images/rocky_beach_chest_open.png"
                inventorySleutel = false
                inventorySword = true
                button3.width = 0 
                button3.text = ""
              else
                label1.text = "Je heb helaas de sleutel nog niet. \nKom later terug."
              end
            end
          end     
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
