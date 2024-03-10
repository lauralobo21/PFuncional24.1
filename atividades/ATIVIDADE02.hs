atividade = "2"

-- Substitua seus dados
nome = "Laura Soléria Lobo Vitorino Maciel"
matricula = "555523"

-- 1 
-- Sejam as tuplas u e v de inteiros
-- tal que exista um inteiro k onde
-- u = kv ou v = ku  
-- então u e v são mútiplos. Construa 
-- função que determine se duas 
-- tuplas de inteiros  são múltiplas.
isMult :: (Int) -> (Int) -> Bool
isMult u v = if mod u v == 0 || mod v u == 0 then True else False
   
-- 2
-- Sejam todos os triângulos retângulos
-- de perímetro p e de lados inteiros.
--   representados por tuplas (a,b,c) 
-- com  a>=b>=c. Criar  
--  função que determine 
-- o total destes triângulos dado p .

tot'tri  :: Int -> Int
tot'tri p = length [(a, b, c) | a <- [1..p], b <- [1..a], c <- [1..b], p == a + b + c, a^2 == b^2 + c^2] 




