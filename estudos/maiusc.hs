maius :: Char -> String
maius l | l >= 'a' && l <= 'z' = "Minuscula"
        | l >= 'A' && l <= 'Z' = "Maiuscula"
        | otherwise = "Insira uma letra"