valorAbsoluto :: Float -> Float
valorAbsoluto x = if x < 0 then -x else x

-- >>> valorAbsoluto (-128182)
-- 128182.0

bisiesto :: Int -> Bool
bisiesto n = mod n 4 == 0 && not (mod n 100 == 0 && mod n 400 /= 0)

-- >>> bisiesto 2000
-- True

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n-1)

-- >>> factorial 5
-- 120

divisoresDesdeK :: Int -> Int -> [Int]
divisoresDesdeK n k = 
    if n == k 
        then [n] 
        else 
            if mod n k == 0 
                then k : divisoresDesdeK n (k+1)
                else divisoresDesdeK n (k+1)

divisores :: Int -> [Int]
divisores n = divisoresDesdeK n 1

esPrimo :: Int -> Bool
esPrimo n = length (divisores n) == 2

cantDivisoresPrimos :: Int -> Int
cantDivisoresPrimos n = length (filter esPrimo (divisores n))

-- >>> cantDivisoresPrimos 100
-- 2
