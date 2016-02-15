print("Is de kaas geel?")
Answer = string.lower(io.read())

if Answer == "ja" then
  print("Zitten er gaten in?")
  Answer = string.lower(io.read())
  if Answer == "ja" then 
    print("Is de kaas belachelijk duur?")
    Answer = string.lower(io.read())
    if Answer == "ja" then
      print("Emmenthaler")
    else
      print("Leerdammer")
    end
  else
    print("Is de kaas hard als steen?")
    Answer = string.lower(io.read())
      if Answer == "ja" then
        print("Pamigiano Reggiano")
      else
        print("Goudse kaas")
        end
end
else
  print("Heeft de kaas blauwe schimmels?")
  Answer = string.lower(io.read())
    if Answer == "ja" then
      print("Heeft de kaas een korst?")
      Answer = string.lower(io.read())
        if Answer == "ja" then
          print("Blue de Rochbaron") 
        else
          print("Foume d'Ambert")
    end
    else
      print("Heeft de kaas een korst?")
      Answer = string.lower(io.read())
        if Answer == "ja" then
          print("Camembert")
        else
          print("Mozzarella") 
        end
      end
    end
