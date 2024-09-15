
atividade = "04"
nome = "Laura Soléria Lobo Vitorino Maciel"
matricula = "555523"

-- 1
replace :: [Char] -> [Char] -> [Char] -> [Char]
replace [] _ _ = []
replace (h : t) de para
    | take (length de) (h : t) == de = para ++ replace (drop (length de) (h : t)) de para
    | otherwise = h : replace t de para


-- 2
lsSplit :: [Int] -> ([Int], Int, [Int])
lsSplit [] = ([], 0, [])
lsSplit lista = let maior = maximum lista in (takeWhile (/= maior) lista, maior, tail (dropWhile (/= maior) lista))

-- 3
selectionSort :: (Ord a) => [a] -> [a]
selectionSort [] = []
selectionSort lista = let maior = maximum lista in maior : selectionSort (remove maior lista)
    where
        remove _ [] = []
        remove x (y : ys) =
            if x == y
                then ys
                else y: remove x ys