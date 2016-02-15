require 'gui'
require 'lvl/lvl'
require 'func/btn'

window = gui.create_window()
window.title = "Adventure game"
window.width = 900
window.height = 500
window.x = 50
window.y = 50

load_level1_1()

gui.run()