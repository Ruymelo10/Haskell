import Data.Char
--1º
paraMaiuscula :: String -> String
paraMaiuscula str = [toUpper ch | ch <- str]

paraMaiuscula2 :: String -> String
paraMaiuscula2 str = [toUpper ch | ch <- str, isAlpha ch]

--2º
divisores :: Integer -> [Integer]
divisores n
 | n == 0 = []
 |otherwise = [x | x <- [1..n], n `mod` x ==0]

ehPrimo :: Integer -> Bool
ehPrimo n = length (divisores n) == 2

--3º
menorLista :: [Int] -> Int
menorLista [] = maxBound :: Int
menorLista [x] = x
menorLista (x:xs)
 |x < menorLista xs = x
 |otherwise = menorLista xs

--4º
-- http://greenroomcoder.blogspot.com/2005/09/my-haskell-fibonacci-table.html

--5º
measure :: [Int] -> Int
measure x
 |null x = -1
 |otherwise = length x

--6º
takeFinal :: Int -> [Int] -> [Int]
takeFinal n xs = drop (length xs-n) xs 

--7º
remove :: Int -> [a] -> [a]
remove _ [] = []
remove 0 (x:xs) = xs
remove n (x:xs) = x : remove (n-1) (xs)

--8º
addOneFirst :: [Int] -> Int
addOneFirst [] = 0
addOneFirst (x:xs) = x+1

addOneFirst2 :: [Int] -> Int
addOneFirst2 x = if length(x)==0 then 0 else (x!!0)+1

--9º
addTwoFirst :: [Int] -> Int
addTwoFirst [] = 0
addTwoFirst [x] = x
addTwoFirst (x:y:xs) = x+y 

addTwoFirst2 :: [Int] -> Int
addTwoFirst2 x
 | length(x)==0 = 0
 | length(x)==1 = x!!0
 | otherwise= x!!0 + x!!1

--10º
produto :: [Integer] -> Integer
produto [] = 1
produto(x:xs)= x * produto(xs)
-- se pa da pra fazer com fold right
--11º
unique_alt :: [Int] -> [Int]
unique_alt [] = []
unique_alt (x:xs)
    | elem x ( unique_alt xs ) = [ y | y <- ( unique_alt xs ), y /= x ]
    | otherwise = x : ( unique_alt xs )

--12º
-- Como fazer sem Data.Ord?
isSorted :: (Ord a) => [a] -> Bool
isSorted []       = True
isSorted [x]      = True
isSorted (x:y:xs) = x <= y && isSorted (y:xs)