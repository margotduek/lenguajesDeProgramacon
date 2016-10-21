--2520 es el entero positivo más pequeño que puede ser dividido por cualquier de
--los números entre 1 y 10 sin que exista un residuo. Encuentra el entero
--positivo más pequeño que puede ser dividido por cualquiera de los números entre
--1 y 20 sin que exista residuo (residuo cero)



-- Dada una secuencia de números primos, siendo el primer primo el número 2, el
-- tercer primo el 3 y así sucesivamente,  cuál es el número primo 10,001 de la secuencia?

primos [] lista =  length lista -1
primos (h:t) lista = if isPrime h then  primos t (lista ++ [h]) else primos t lista

isPrime k = null [ x | x <- [2..k - 1], k `mod`x  == 0]


--El número primo 41, puede re-escribirse como la suma de 6 número primos consecutivos
--		2 + 3 + 5 + 7 + 11 + 13

--el primo 41 representa la suma más grande de una serie de números primos consecutivos por debajo de 100.
-- La suma más grande de números primos que resulta en otro número primo por debajo de 1000 es el 953. Esta suma consiste de 21 números consecutivos.

-- Qué número, por debajo de 1,000,000, representa la suma más grande de una secuencia de números primos y que también es un número primo
