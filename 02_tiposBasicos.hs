exOr :: Bool -> Bool ->Bool
exOr x y = (x || y) && not(x && y)

nNot :: Bool -> Bool
nNot True = False 
nNot False = True

exOr' :: Bool -> Bool -> Bool
exOr' True x = not x
exOr'False x = x


tresIguais :: Integer -> Integer -> Integer -> Bool
tresIguais m n p = (m==n) && (n==p)

offset = fromEnum 'A' - fromEnum 'a'

maiuscula :: Char -> Char
maiuscula ch = toEnum (fromEnum ch + offset)

ehDigito :: Char -> Bool
ehDigito ch = ('0' <= ch) && (ch <= '9')

maxi :: Integer -> Integer -> Integer
maxi x y 
 | x >= y = x
 | otherwise = y

{-
f :: T1 -> T2 -> ... Tn-1 -> Tn
f x1 x2 ... xn-1
 |g1 = e1
 |g2 = e2
 .
 .
 .
 |otherwise = ek
-}

maxi' :: Integer -> Integer -> Integer
maxi' x y = if x>=y then x else y