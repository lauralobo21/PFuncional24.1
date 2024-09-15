upper :: Char -> Char
upper c | c >= 'a' && c <= 'z' = toEnum (fromEnum c - 32) 
        | otherwise = c




-- x = [2, 5..15]
-- x
-- [2, 5, 7, 9, 11, 13, 15]
-- x !! 3
-- 7
