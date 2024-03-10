-- Definiçoes Locais
-- Where

area :: Float -> Float -> Float -> Float
area a b c = sqrt (s*(s-a)*(s-b)*(s-c))
    where 
        s = (a+b+c)/2



funcao :: Int -> Int -> Int
funcao x y  | x <= 10 = x + a
            | otherwise = x - a 
    where 
        a = (y+1)^2


eq2g :: Int -> Int -> Int -> Int
eq2g a b c  
        | delta > 0 = 2 
        | delta == 0 = 1
        | otherwise = 0
    where 
        delta = b^2 - 4*a*c


-- Let
--let quad x = x*x in quad 10

--let y = 10 in y + 25

-- calcula a area do cilindro a partir de dois valores:
-- raio da base e altura do cilindro 
areacilindro :: Float -> Float -> Float
areacilindro r h =  let arealado = 2 * pi * r * h --mostra a como calcular antes
                        areabase = pi * r * r
                    in arealado + 2*areabase
                
