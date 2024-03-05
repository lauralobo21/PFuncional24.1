-- eq2g a b c = 
--     if a == 0 || delta < 0
--         then 
--             error "lascou"
--         else 
--             (x0, x1)
--         where
--         delta = b*b - 4*a*c
--         x0 = (-b + sqrt delta) / (2*a)
--         x1 = (-b - sqrt delta) / (2*a)
-- :l nome do arquivo (compila)

coutSquare n = sum [1 | x <- [1..n], y <- [1..x], z <- [1..y]]
    where 
        isSqr a b c = a^2 == b^2 + c^2
        