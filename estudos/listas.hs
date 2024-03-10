import Language.Haskell.TH (Body)
-- lista1 = [1, 3..100]

-- -- : 
-- lista = 4 : [2, 3]
-- --[4, 2, 3]


-- pares = [0, 2..9]

-- impares = [1, 3..10]

-- -- ++ operador de concatenação
-- result = pares ++ impares
-- numeros = [1, 2, 3, 4] ++ [3, 4, 5]

--  COMPRIMENTO DE UMA LISTA
-- compr :: [Int] -> Int
-- compr [] = 0
-- compr (h:t) = 1 + compr t

-- somat :: [Int] -> Int
-- somat [] = 0                -- se a lista for vazia, retorna 0
-- somat (h:t) = h + somat t   -- soma a head + soma da tail


--  VERIFICAR SE EXISTE AQUELE CHAR NA LISTA DE CHAR
-- possuichar :: [Char] -> Char -> Bool
-- possuichar [] ch = False                 --CASO BASE
-- possuichar (h:t) ch |h == ch = True
--                     |otherwise = possuichar t ch 

-- VERIFICAR O MAIOR ELEMENTO DA LISTA
-- maiorelem :: [Int] -> Int
-- maiorelem [] = -1
-- maiorelem (h:t) = if h >= maiorcauda then h else maiorcauda
--     where 
--         maiorcauda = maiorelem t


-- RETORNA UMA LISTA COM OS 10 PRIMEIROS NUMEROS MULTIPLOS DE N
-- multiplos :: Int -> [Int]
-- multiplos n = [n*x | x <- [1..10]]

-- VERIFICAR SE UM DETERMINADO NUMERO EH PRIMO
isprimo :: Int -> Bool 
isprimo n = if length [x | x <- [1..n], mod n x == 0 ] == 2 then True else False

-- QUICK SORT
qsort :: [Int] -> [Int]
qsort [] = []
qsort (cab:cauda) = qsort [y | y <- cauda, y < cab]  -- menores que o pivo
                    ++ [cab]    -- o próprio pivo
                    ++ qsort [y | y <- cauda, y >= cab] --maiores que o pivo