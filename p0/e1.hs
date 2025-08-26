-- null :: Foldable t => t a -> Bool
-- retorna true si la estructura está vacia
-- >>> null []
-- True


-- head :: [a] -> a
-- retorna el primer elemento de una lista
-- >>> head [1,2,3]
-- 1


-- tail :: [a] -> [a]
-- retorna la cola de una lista
--- >>> tail [1,2,3]
-- [2,3]


-- init :: [a] -> [a]
-- retorna el inicio de una lista
-- >>> init [1,2,3]
-- [1,2]


-- last :: [a] -> a
-- retorna el ultimo elemento de una lista
-- >>> last [1,2,3]
-- 3


-- take :: Int -> [a] -> [a]
-- "take k [...]" toma los k primeros elementos de la lista
-- >>> take 2 "Hello"
-- "He"


-- drop :: Int -> [a] -> [a]
-- "drop k [...]" dropea los k primeros elementos de la lista
-- >>> drop 2 "Hello"
-- "llo"


-- (++) :: [a] -> [a] -> [a]
-- concatenación de listas
-- >>> "Hola " ++ "Mundo"
-- "Hola Mundo"


-- concat :: Foldable t => t [a] -> [a]
-- concatena todos los elementos de un contenedor de listas
-- >>> concat ["Hola", " Como", " Estas"]
-- "Hola Como Estas"


-- reverse :: [a] -> [a]
-- reversa de una lista
-- >>> reverse [1,2,3,4]
-- [4,3,2,1]


-- elem :: (Foldable t, Eq a) => a -> t a -> Bool
-- pertenencia a una lista
-- >>> elem 1 [1,2,3]
-- True