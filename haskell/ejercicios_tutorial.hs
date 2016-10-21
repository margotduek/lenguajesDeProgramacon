-- Se pueden concatenar listas con ++
-- Para concatenar caracteres a una palabra 'H':"ola"
-- let es para dejar algo declarado en el programa como let a = 0
-- Para buscar algo por su indice se usa !! por ejemplo   "Margot" !! 3  me regresa g  


doubleMe x = x + x

doubleUs x y = x*2 + y*2

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1
