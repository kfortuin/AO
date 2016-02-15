require 'gui'
require 'func/btn'
require 'lvl/lvl'

window = gui:create_window()
window.width = 900
window.height = 500
window.x = 50 
window.y = 50
window.title = "Adventure game"

create_button1()
create_button2()
create_button3()
label1()
inventaris()
load_level1_1()

gui.run()
