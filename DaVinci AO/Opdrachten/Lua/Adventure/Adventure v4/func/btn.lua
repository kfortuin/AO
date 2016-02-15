function label1()
  label1 = window: add_label()
  label1.x = 5
  label1.y = 10
  label1.text = ""
end

function create_button1()
  button1 = window: add_button()
  button1.width = 150
  button1.x = 10
  button1.y = 150
  button1.text = ""
end

function create_button2()
  button2 = window: add_button()
  button2.width = 150
  button2.x = 10
  button2.y = 190
  button2.text = ""
end

function create_button3()
  button3 = window: add_button()
  button3.width = 150
  button3.x = 10
  button3.y = 230
  button3.text = ""
end

function inventaris()
  labelInventory = window: add_label()
  labelInventory.x = 5
  labelInventory.y = 300
  labelInventory.text = "Inventaris"

  labelDivider = window: add_label()
  labelDivider.x = 5
  labelDivider.y = 320
  labelDivider.text = "--------------------------------------"
end