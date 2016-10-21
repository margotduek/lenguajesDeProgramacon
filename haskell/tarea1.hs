-- Programar en Haskell
  -- Isertion Sort
  -- Newton
  -- Quick sort

-- Insertion sort
insertionsort[] = []
insertionsort(h:[]) = [h]
insertionsort (h:t) = let insert num [] = [num]
                          insert num (h:t) = if num > h
                                             then [h] ++ (insert num t)
                                             else [num]++[h]++ t
                      in
                          insert h (insertionsort t)

-- Otra manera de hacerlo puede ser así

insertionsort2[] = []
insertionsort2(h:[]) = [h]
insertionsort2 (h:t) = let lc x lista = [y | y <- lista, x >= y] ++ [x] ++ [y | y <- lista, x >y]
                       in
                         lc h (insertionsort2 t)

-- quicksort
quicksort [] = []
quicksort (h:t) = let left = [x | x <- t, x < h]
                      right = [x | x <- t, x >= h]
                  in
                    quicksort left ++[h] ++ quicksort right

-- Newton
raiz x = raizI(1,(1+x)/2, x)
raizI (x,i,n) =  if x == i then x else raizI((x+n/x)/2, (i+n/i)/2, n)
