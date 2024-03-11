-- A ORDEM IMPORTA

-- ESSE 
padroes :: Int -> String
padroes 1 = "Um!"
padroes 2 = "Dois!"
padroes 3 = "Tres!"
padroes x = "Não está entre 1 e 3"

-- É DIFERENTE DESSE:
padrooes :: Int -> String
padrooes x = "Não está entre 1 e 3"      -- qualquer numero que entrar vai retornar
padrooes 1 = "Um!"                       -- primeiro o "Não está entre 1 e 3"
padrooes 2 = "Dois!"
padrooes 3 = "Tres!"

----------------------------------------------------------------------------------------------------

-- _ UNDERSCORE É USADO PARA DETERMINAR QUALQUER NUMERO, QUE NAO VAI FAZER DIFERENÇA
-- EXEMPLO 1: 
padroes2 :: [Int] -> Int
padroes2 [] = 0                     --caso base
padroes2 (_:t) = 1 + padroes2 t      --o head não importa

-- EXEMPLO 2:
type Tupla4 = (Int, Int, Int, Int)

padroes3:: Tupla4 -> String 
padroes3 (_, _, _, fourth)  | fourth > 10 = "Maior do que 10"
                            | otherwise = "Não maior do que 10"
