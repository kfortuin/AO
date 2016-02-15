--require '../main'
--require '../func/btn'

function load_level1_1()
  create_button1_1_1()
  create_button1_1_2()
  create_button1_1_3()
  imageBG = window: add_image()
  imageBG.file_name = "images/rocky_beach_chest_shovel.png"
  imageBG.x = button1_1_1.width + 90
  imageBG.y = 00
  label1_1 = window: add_label()
  label1_1.x = 5
  label1_1.y = 10
  label1_1.text = "Je staat op een rotsachtig strand.\nIn de verte op zee zie je een boot.\nJe ziet ook een pad naar het bos.\nVerder zie je een schep liggen.\n\nWat doe je?"
end

function load_level1_2()
  create_button1_1_1()
  create_button1_1_2()
  create_button1_2_3()
  imageBG = window: add_image()
  imageBG.file_name = "images/rocky_beach_chest.png"
  imageBG.x = button1_1_1.width + 90
  imageBG.y = 00
  label1_2 = window: add_label()
  label1_2.x = 5
  label1_2.y = 10
  label1_2.text = "Je hebt de schep opgepakt. \n Je kunt hiermee mischien wel\nde schatkist uitgraven.\n\nWat wil je nu doen?"
end  