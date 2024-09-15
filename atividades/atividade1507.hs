--seq :: Int -> [Int]
--seq x 
  --  | x == 1 = [1]
  -- | odd x = x : seq (div (3 * x -1) 2)
   -- | even x = x : seq (div x 2)

-----------------
--collatz 
  --  n % 2 == 0 = n/2
    --otherwise = (3*n-1)/2