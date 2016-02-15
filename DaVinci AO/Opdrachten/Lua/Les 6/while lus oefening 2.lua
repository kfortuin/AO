math.randomseed(os.time())
number = math.random(1, 10)
found = false
print('Raad het getal.')
while found == false do
  Answer = tonumber(io.read())
  if Answer == number then
    print('Goed geraden')
    found = true
  else
    print('Helaas, gok nog een keer.') 
  end
end