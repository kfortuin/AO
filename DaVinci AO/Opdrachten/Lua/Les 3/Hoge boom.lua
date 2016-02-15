print("Is het geel") 
Answer = io.read()

if Answer == "ja" then
  print("Het is de zon") 
else
  print("Is het groot?")
  Answer = io.read()
  
    if Answer == "ja" then
      print("Een olifant")
    else
      print("Een muis")
    end
end