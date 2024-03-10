-- Utilizando Guardas/Pipe
-- Precisam estar alinhados

fatorial :: Int -> Int 
fatorial n 
    | n == 0 = 1  
    | n > 0 = n * fatorial(n-1)


maiorn :: Int -> Int -> Int
maiorn a b 
    | a > b = a 
    | a < b = b 
    | otherwise = 0