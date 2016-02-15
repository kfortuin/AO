--Level 1.1
function load_level1_1()
  button1.text = "Ga de zee in"
  function button1: on_click()
    load_level2_1()
  end
  
  button2.text = "Ga het bos in"
  function button2: on_click()
    load_level3_1()
  end
  
  button3.text= "Pak de schep op"
  function button3: on_click()
    load_level1_2()
  end
  
  label1.text = "Je staat op een rotsachtig strand. \nIn de verte op zee zie je een boot. \nJe ziet ook een pad naar het bos. \nVerder zie je een schep liggen. \n\nWat doe je?"

  imageBG = window:add_image()
  imageBG.file_name = "images/rocky_beach_chest_shovel.png"
  imageBG.x = button1.width + 90
  imageBG.y = 00
end

--Level 1.2
function load_level1_2()
  button1.text = "Ga de zee in"
  function button1: on_click()
    load_level2_1()
  end
  
  button2.text = "Ga het bos in"
  function button2: on_click()
    load_level3_1()
  end
  
  button3.text = "Graaf de kist uit"
  function button3: on_click()
    load_level1_3()
  end
  
  label1.text = "Je hebt de schep opgepakt.\nJe kunt hiermee mischien wel\nde schatkist uitgraven.\n\nWat wil je nu doen?"

  --imageBG = window:add_image()
  imageBG.file_name = "images/rocky_beach_chest.png"
  imageBG.x = button1.width + 90
  imageBG.y = 00
end

function load_level1_3()
  button1.text = "Ga de zee in"
  function button1: on_click()
    load_level2_1()
  end
  
  button2.text = "Ga het bos in"
  function button2: on_click()
    load_level3_1()
  end
  
  button3.text = "Open de kist"
  function button3: on_click()
    load_level1_4()
  end
  
  label1.text = "Je hebt de kist opgegraven. \nJe kan proberen 'm open te maken."
  
  --imageBG = window:add_image()
  imageBG.file_name = "images/rocky_beach_chest_dug.png"
  imageBG.x = button1.width + 90
  imageBG.y = 00
end