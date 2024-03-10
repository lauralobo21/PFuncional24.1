import System.Win32 (xBUTTON1)
fatorial :: Int -> Int 
fatorial x 
        | x == 0 = 1
        | x > 0 = x * fatorial(x-1)


-- Escreva uma função recursiva 
-- que calcule o resto inteiro da
-- divisao de dois numeros 
-- utilizando subtrações sucessivas
divrec :: Int -> Int -> Int
divrec a b 
    | b > a = a 
    | b == a = 0
    | otherwise = divrec (a-b) b 


-- Escreva uma função recursiva 
-- que receba como parametros 
-- dois numeros inteiros positivos
-- x e n, e retorne o resultado de x*n, realizando somas sucessivas
multrec :: Int -> Int -> Int 
multrec x n 
        | x == 1 = n
        | x > 1 = n + multrec(x-1) n 


