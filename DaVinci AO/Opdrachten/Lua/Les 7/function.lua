function answer()
  Answer = string.lower(io.read())
end

print("Is het geel?")
answer()

if Answer == "ja" then
  print("Kun je er op staan?")
  answer()
  if Answer == "ja" then
    print("Dan is het een kuikentje!")
  else
    print("Dan is het de zon!")
  end
else
  print("Is het groot?")
  answer()
  if Answer == "ja" then
    print("Dan is het een olifant.")
  else
    print("Dan is het een muis.")
  end
end     