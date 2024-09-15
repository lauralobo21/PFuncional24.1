atividade = "06"
nome = "Laura Soléria Lobo Vitorino Maciel"
matricula = "555523"

-- 01
-- crie uma função que determine se uma string é anagrama de outra
anagrama :: [Char] -> [Char] -> Bool
anagrama l1 l2 = sort l1 == sort l2
-- teste 
-- $ anagrama rau loa
-- true

-- ordena a palavra com a funçao selectionSort e retira os espaços
sort :: [Char] -> [Char]
sort x = selectionSort ([y | y <- x, y /= ' '])

-- ordena a palavra
selectionSort :: (Ord a) => [a] -> [a]
selectionSort [] = []
selectionSort lista = let maior = maximum lista in maior : selectionSort (remove maior lista)
    where
        remove _ [] = []
        remove x (y : ys) =
            if x == y
                then ys
                else y: remove x ys




-- 02
-- construa função que elimine repetições de uma dada string s
--  sem alterar a sequência original 
-- dos caracteres de s.
unique :: [Char] -> [Char]
unique [] = ""
unique (x:xs) = x : unique([y | y <- xs, y /= x])
-- teste
-- $ unique "aabbxa" 
-- $ "abx"



-- 03
-- implemente uma função que determine a string formada pelos 
-- caracteres comuns a duas strigns de entrada a e b. A saida não 
-- deve ter duplicadas.
intersec :: [Char] -> [Char] -> [Char]
intersec a b = unique([x | x <- a, y <- b, x == y])
-- teste
-- $ intersec "abcd" "cdef"
-- $ "cd"



-- 04
-- dado três listas zipálas numa lista de triplas de forma 
-- semelhante ao comando zip. 
zip'linha :: [a] -> [b] -> [c] -> [(a,b,c)]
zip'linha _ [] _ = []
zip'linha [] _ _ = []
zip'linha _ _ [] = []
zip'linha (a:as) (b:bs) (c:cs) = (a, b, c) : zip'linha as bs cs

-- teste 01
-- zip'linha
-- $ [1,2,3] "abc" [True,False,True] 
-- $ [(1,"a", TRUE), (2, "b", FALSE), (3, "c", TRUE)] 
-- teste 02
-- $ zip'linha [1,2,3,4] "abc" [TRUE] 
-- $ [(1,"a",TRUE)]
