-- funcion para factorial 
fact 1 = 1
fact x = x *fact(x - 1)


-- funcion para encontrar el mayor número de una lista
maximo (a:b:c) = let bigger (a,b) = if a > b then a else b in if c==[] then bigger(a,b) else maximo ([bigger(a,b)]++c)
-- funcion de gerry 
--maxim = -1
--maximum list = max(tail list) (head list)
--	| (length list) == 0 = current
--	| (head list) > current = max (tail list) (head list)
--	| otherwise = max ( tail list) current

minimo (a:b:c) = let smaller (a,b) = if a < b then a else b in if c==[] then smaller(a,b) else minimo ([smaller(a,b)]++c)


-- funcion que recibe una lista y devuelbe una tupla con el máximo y el minimo 
-- tuplas (max:min) = max = maximo(a:b:c) min = minimo(a:b:c)
tupla = (maximo, minimo)



-- Factorial con recursividad de cola
let fact_cola (x r) = if(x==1)
    then r
    else fact_cola(x-1,r*x)
--------------------------------

fact 0 sol = sol
fact 1 sol = sol
fact x sol = fact(x-1)(x*sol)

--------------------------------


-- funcion que haga insertion sort
ordena(x:y:z) = if x > y
	      
    

