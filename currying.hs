-- Esta es una funcion que le pasas una fincion ( puede ser +, -, * , /  o lo que quieras hacer
--) y 2 listas y esta funcion te regresa una lista con el resultado de la operacion de las 2 listas
--operacion _ [] [] = []
operacion f (hx:tx) (hy:ty) = [f hx hy] ++ operacion f tx ty
operacion _ _ _ = []

-- funcion que le pasas una funcion, un número y una lista por ejemplo ( < 5 [2,6,9,7,8])
-- Funcion mia que regresa booleanos
tardio f n (h:t) = [f n h] ++ tardio f n t
tardio _ _ _ = []
-- funcion mia que regresa una lista de numeros que cumplen la condicion
tardio_numero f n (h:t) = if n `f` h then [h] ++ tardio_numero f n t else tardio_numero f n t
tardio_numero _ _ _ = []
-- Funcion Ariel
-- otromas f [] = []
-- otromas f (h:t)
  --    | f h = h:otromas f t
  --    | otherwise = otromas ft


-- Funcion que encuentra el número más grande que es divisible entre 4929 en una listaI
divisible :: (Integral a) => a -> [a] -> a
divisible n (h:t) = if n mod h == 0 then [h] ++ divisible n t else divisible n t
divisible _ [] = []
