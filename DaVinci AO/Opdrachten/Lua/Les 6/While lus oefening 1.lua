

question = false

while question == false do
print("Wie heeft de computer uitgevonden?")
Answer = string.lower(io.read())
  if Answer == 'alan turing' then
    print('Dat je dat weet. Echt heel goed gedaan.')
    question = true
  else
    print('Dat antwoord is niet goed. Probeer het nog maar eens.')
  end
end