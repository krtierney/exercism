module Bob exposing (..)


hey : String ->String
hey say = 
  last_char=
    right 1 say
  if last_char == '?' then
    "Sure"
  else if last_char == '!' then
   "Whoa, chill out!"
  else
    "Whatever."
    
