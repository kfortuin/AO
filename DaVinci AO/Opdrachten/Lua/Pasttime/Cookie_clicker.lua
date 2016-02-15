require "gui"
os.time()

local window = gui.create_window()
window.title = "Cookie clicker"
window.height = 450
window.width = 300

buttonclicker = window: add_button()
buttonclicker.x = 8
buttonclicker.y = 150
buttonclicker.text = "CLICK"

persecond = window: add_label()
persecond.x = 120
persecond.y = 155
persecond.text = "Cookies p/s: "

perseccount = window: add_text_box()
perseccount.x = 220
perseccount.y = 150
perseccount.width = 75

amount = window: add_text_box()
amount.x = 100
amount.y = 100
amount.text = 0

buttonBuy1 = window: add_button()
buttonBuy1.x = 8
buttonBuy1.y = 200
buttonBuy1.text = "(20) +1 p/s"

Buy1amount = window: add_label()
Buy1amount.x = 120
Buy1amount.y = 205
Buy1amount.text = "Times bought: "

Buy1counter = window: add_text_box()
Buy1counter.x = 220
Buy1counter.y = 200
Buy1counter.width = 50

buttonBuy2 = window: add_button()
buttonBuy2.x = 8
buttonBuy2.y = 250
buttonBuy2.text = "(40) +5 p/s"

Buy2amount = window: add_label()
Buy2amount.x = 120
Buy2amount.y = 255
Buy2amount.text = "Times bought: " 

Buy2counter = window: add_text_box()
Buy2counter.x = 220
Buy2counter.y = 250
Buy2counter.width = 50

buttonBuy3 = window: add_button()
buttonBuy3.x = 8
buttonBuy3.y = 300
buttonBuy3.text = "(100) +10 p/s"


Buy3amount = window: add_label()
Buy3amount.x = 120
Buy3amount.y = 305
Buy3amount.text = "Times bought: "

Buy3counter = window: add_text_box()
Buy3counter.x = 220
Buy3counter.y = 300
Buy3counter.width = 50

buttonBuy4 = window: add_button()
buttonBuy4.x = 8
buttonBuy4.y = 350
buttonBuy4.text = "(200) +20 p/s"

Buy4amount = window: add_label()
Buy4amount.x = 120
Buy4amount.y = 355
Buy4amount.text = "Times bought: "

Buy4counter = window: add_text_box()
Buy4counter.x = 220
Buy4counter.y = 350
Buy4counter.width = 50

buttonBuy5 = window: add_button()
buttonBuy5.x = 8
buttonBuy5.y = 400
buttonBuy5.width = 115
buttonBuy5.text = "(1000) +100 p/s"

Buy5amount = window: add_label()
Buy5amount.x = 135
Buy5amount.y = 405 
Buy5amount.text = "Times bought: "

Buy5counter = window: add_text_box()
Buy5counter.x = 235
Buy5counter.y = 400
Buy5counter.width = 50

cookies = 0
cookiespersecond = 0
Buy1count = 0
Buy2count = 0
Buy3count = 0
Buy4count = 0
Buy5count = 0

amount.text = cookies

function buttonclicker: on_click()
  cookies = cookies + 1
  amount.text = cookies
  print(cookies)

  --if cookies == 20 then
  function buttonBuy1: on_click()
    if cookies <= 20 then
      cookies = cookies - 0
    else
      Buy1count = Buy1count + 1
      Buy1counter.text = Buy1count
      local timer = gui.create_timer()
      timer.interval = 1
      timer:start()
      cookies = cookies - 20
      amount.text = cookies
      cookiespersecond = cookiespersecond + 1
      perseccount.text = cookiespersecond
      function timer: on_tick()
        timer = cookies
        cookies = cookies + 1
        amount.text = cookies
        print(cookies)
      end
    end
  --end
end

  function buttonBuy2: on_click()
    if cookies <= 40 then
      cookies = cookies - 0 
    else
      Buy2count = Buy2count + 1
      Buy2counter.text = Buy2count
      timer2 = gui.create_timer()
      timer2.interval = 1
      timer2:start()
      cookies = cookies - 40
      amount.text = cookies
      cookiespersecond = cookiespersecond + 5
      perseccount.text = cookiespersecond
      function timer2: on_tick()
        timer2 = timer
        timer2 = cookies
        cookies = cookies + 5
        amount.text = cookies
      end
    end
  end

  function buttonBuy3: on_click()
    if cookies <= 100 then
      cookies = cookies - 0 
    else
      Buy3count = Buy3count + 1
      Buy3counter.text = Buy3count
      timer3 = gui.create_timer()
      timer3.interval = 1
      timer3:start()
      cookies = cookies - 100
      amount.text = cookies
      cookiespersecond = cookiespersecond + 10
      perseccount.text = cookiespersecond
      function timer3: on_tick()
        timer3 = timer2
        timer3 = cookies
        cookies = cookies + 10
        amount.text = cookies
      end
    end
  end
  function buttonBuy4: on_click()
    if cookies <= 200 then
      cookies = cookies - 0
    else
      Buy4count = Buy4count + 1
      Buy4counter.text = Buy4count
      timer4 = gui.create_timer()
      timer4.interval = 1
      timer4:start()
      cookies = cookies - 200
      amount.text = cookies
      cookiespersecond = cookiespersecond + 20
      perseccount.text = cookiespersecond
      function timer4: on_tick()
        timer4 = timer3
        timer4 = cookies
        cookies = cookies + 20
        amount.text = cookies
      end
    end
  end
  
  function buttonBuy5: on_click()
    if cookies <= 1000 then
      cookies = cookies - 0
    else
      Buy5count = Buy5count + 1
      Buy5counter.text = Buy5count
      timer5 = gui.create_timer()
      timer5.interval = 1
      timer5:start()
      cookies = cookies - 1000
      amount.text = cookies
      cookiespersecond = cookiespersecond + 100
      perseccount.text = cookiespersecond
      function timer5: on_tick()
        timer5 = timer4
        timer5 = cookies
        cookies = cookies + 100
        amount.text = cookies
      end
    end
  end
--END ALL
end
gui.run()