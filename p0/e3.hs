inverso :: Float -> Maybe Float
inverso 0 = Nothing
inverso x = Just (1 / x)

-- >>> inverso 2
-- Just 0.5

aEntero :: Either Int Bool -> Int
aEntero (Left n) = n
aEntero (Right b) = if b then 1 else 0

-- >>> aEntero (Right False)
-- 0

