import Data.Char
atividade = "3"
nome = "Laura Soléria Lobo Vitorino Maciel"
matricula = "555523"

--Questão 01
tls :: String -> [(Char, Int)]
tls [] = []     --caso base
tls (h:t) = (h, length(filter(==h)(h:t))) : tls (filter(/=h)t)

--Questão 02
tlsString :: [String] -> [(String, Int)]
tlsString [] = []
tlsString (h:t) = (h, length (filter (==h) (h:t))) : tlsString (filter (/=h) t)

maximo ::[(String, Int)] -> (String, Int)
maximo (h:t) = foldl (\(maxStr, maxInt) (str, int) -> if int > maxInt then (str, int) else (maxStr, maxInt)) h t

sfq :: String -> (String, Int)
sfq [] = ("", 0)
sfq str = maximo (tlsString (words (filter (\ch -> isAlphaNum ch || ch == ' ')str)))