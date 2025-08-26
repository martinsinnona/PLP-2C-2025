data AB a = Nil | Bin (AB a) a (AB a)
  deriving (Show)

vacioAB :: AB a -> Bool
vacioAB Nil = True
vacioAB _ = False

-- >>> vacioAB Nil
-- True

-- >>> vacioAB (Bin Nil 2 Nil)
-- False

negacionAB :: AB Bool -> AB Bool 
negacionAB Nil = Nil
negacionAB (Bin i r d) = Bin (negacionAB i) (not r) (negacionAB d)

-- >>> negacionAB (Bin (Bin Nil False Nil) True (Bin Nil True Nil))
-- Bin (Bin Nil True Nil) False (Bin Nil False Nil)

productoAB :: AB Int -> Int
productoAB Nil = 1
productoAB (Bin i r d) = productoAB i * r * productoAB d

-- >>> productoAB (Bin (Bin Nil 0 Nil) 2 (Bin Nil 3 Nil))
-- 0

