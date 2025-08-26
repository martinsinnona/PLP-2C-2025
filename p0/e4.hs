limpiar :: String -> String -> String
limpiar s xs = filter (\x -> not (elem x s)) xs

-- >>> limpiar "susto" "puerta"
-- "pera"

promedio :: [Float] -> Float
promedio xs = sum xs / fromIntegral (length xs)

difPromedio :: [Float] -> [Float]
difPromedio xs = map (\x -> x - promedio xs) xs

-- >>> difPromedio [2,3,4]
-- [-1.0,0.0,1.0]

todosIguales :: [Int] -> Bool
todosIguales xs = length xs == length (filter (\x -> x == head xs) xs)

-- >>> todosIguales []
-- True
