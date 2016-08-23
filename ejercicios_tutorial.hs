-- Se pueden concatenar listas con ++
-- let es para dejar algo declarado en el programa como let a = 0

doubleMe x = x + x

doubleUs x y = x*2 + y*2

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1
