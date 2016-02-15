print("Hoe heet je?")
Name = io.read()
print("Hallo, ".. Name)

if Name == "Kevin" then
   print("Je bent een toffe gozer") 
else
  print("Jou ken ik nog niet")
end

print("Hoe oud ben je?")
Age = tonumber(io.read())

if Age < 18 then
  print(Age .. " is niet erg oud")
else
  print("Ben je al ".. Age)
  print("Dat zou je ook niet zeggen. ")
end