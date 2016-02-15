--require '../main'
--require '../lvl/lvl'

  --Level 1 state 1
  function create_button1_1_1()
    button1_1_1 = window: add_button()
    button1_1_1.x = 10
    button1_1_1.y = 150
    button1_1_1.width = 150 
    button1_1_1.text = "Ga de zee in"
    function button1_1_1: on_click()
      load_level2_1()
    end
  end
  
  function create_button1_1_2()
    button1_1_2 = window: add_button()
    button1_1_2.x = 10
    button1_1_2.y = 190
    button1_1_2.width = 150
    button1_1_2.text = "Ga het bos in"
    function button1_1_2: on_click()
      load_level3_1()
    end
  end
  
  function create_button1_1_3()
    button1_1_3 = window: add_button()
    button1_1_3.x = 10 
    button1_1_3.y = 230
    button1_1_3.width = 150
    button1_1_3.text = "Pak de schep op"
    function button1_1_3: on_click()
      load_level1_2()
    end
  end
  
--Level 1 state 2
  function create_button1_2_3()
    button1_2_3 = window: add_button()  
    button1_2_3.x = 10
    button1_2_3.y = 230
    button1_2_3.width = 150
    button1_2_3.text = "Graaf de kist uit"
    function button1_2_3: on_click()
      load_level1_3()
    end
  end
  