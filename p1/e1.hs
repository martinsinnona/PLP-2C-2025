max2 :: (Float, Float) -> Float
max2 (x,y) 
    | x >= y = x
    | otherwise = y

--- >>> max2(1,0)
-- 1.0

-- no está currificada, su versión currificada sería:

max2' :: Float -> Float -> Float
max2' x y 
    | x >= y = x
    | otherwise = y

--- >>> max2' 1 0
-- 1.0

normaVectorial :: (Float, Float) -> Float
normaVectorial (x,y) = sqrt (x^2 + y^2)

-- su versión currificada

normaVectorial' :: Float -> Float -> Float
normaVectorial' x y = sqrt (x^2 + y^2)

-- >>> normaVectorial' 1 1
-- 1.4142135

subtract' :: Float -> Float -> Float
subtract' = flip (-)

-- >>> subtract 6 3
-- -3

predecesor :: Float -> Float
predecesor = subtract' 1

-- >>> predecesor 10
-- 9.0

evaluarEnCero :: (Float -> Float) -> Float
evaluarEnCero = \f -> f 0

dosVeces :: (Float -> Float) -> (Float -> Float)
dosVeces = \f -> f . f


