print("Hoe oud ben je?")
Age = tonumber(io.read())

if Age < 3 or Age > 100 then
  print(Age.."....daar geloof ik niets van !!!!")
elseif Age < 18 then
  print(Age.." is niet erg oud")
elseif Age > 30 and Age < 45 then
  print("Dat is een mooie leeftijd")
else
  print("Ben je al "..Age.."?")
  print("Dat zou je ook niet zeggen")
end