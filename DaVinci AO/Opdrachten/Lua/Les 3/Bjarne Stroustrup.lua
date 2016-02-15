--Bjarne Stroustrup
print("Welke programmeertaal is bedacht door Bjarne Stroustrup?")
Answer = string.upper(io.read())
if Answer == "C++" then
  print("Inderdaad")
 else
   print("Hoe kom je daar nou bij?")
end

--Wie heeft de computer uitgevonden?
  print("Wie heeft de computer uitgevonden?")
    Answer = string.lower(io.read())
if Answer == "charles cabbage" or
  Answer == "alan turing" or
  Answer == "konrad zuse" then
  print("Inderdaad")
else 
  print("Dat is niet goed, maar het is ook een moeilijke vraag")
end

--PacMan
print("In welk jaar is Pac-man op de markt gebracht?")
Answer = tonumber(io.read())
if Answer == 1980 then
  print("Dat je dat weet!")
elseif Answer > 1975 and Answer < 1985 then
  print("Bijna goed, maar toch fout")
elseif Answer < 1976 or Answer > 1984 then
  print("Da's niet eens in de buurt!")
end