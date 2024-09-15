atividade = "05"
nome = "Laura Soléria Lobo Vitorino Maciel"
matricula = "555523"

-- 1

bis :: Int -> Bool 
bis a 
    |mod a 400 == 0 = True
    |(mod a 4 == 0) && (mod a 100 /= 0) = True 
    |otherwise = False


-- 2

temp :: Float -> Char -> Char -> Float
temp t fr to 
    |fr == 'C' && to == 'F' = t*1.8 + 32
    |fr == 'C' && to == 'K' = t + 273.15
    |fr == 'K' && to == 'C' = t - 273.15
    |fr == 'K' && to == 'F' = (t-273.15) * 1.8 + 32
    |fr == 'F' && to == 'K' = (t -32) / 1.8 + 273.15
    |fr == 'F' && to == 'C' = (t - 32) / 1.8
    |otherwise = t


-- 3

coin :: String -> [(Char, Float)] -> Float 
coin s m = sum [valor | num <- s, (num2, valor) <- m, num == num2]
