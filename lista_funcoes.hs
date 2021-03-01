--1º
dobro :: Integer -> Integer
dobro x = 2*x

--2º
quadruplo :: Integer -> Integer
quadruplo x = 2* dobro x

--3º
poli2 :: Double -> Double -> Double -> Double -> Double
poli2 a b c x = a * (x^2) + b*x + c

--4º
isPar :: Integer -> Bool
isPar x = mod x 2 == 0
parImpar :: Integer -> String
parImpar x = if isPar x then "par" else "impar"

--5º
maxThree :: Integer -> Integer -> Integer -> Integer
maxThree x y z 
 |x>y && x>z = x
 |y>x && y>z = y
 |otherwise = z

maxi :: Integer -> Integer -> Integer
maxi x y = if x>y then x else y

maxFour :: Integer -> Integer -> Integer -> Integer -> Integer 
maxFour a b c d = let x = maxThree a b c in if x>d then x else d  

maxFour2 :: Integer -> Integer -> Integer -> Integer -> Integer
maxFour2 a b c d = maxi d (maxi c (maxi a b))

--6º
quantosIguais :: Integer -> Integer -> Integer -> Integer
quantosIguais x y z
 | (x == y) && (y==z) = 3
 | (x==y) || (y==z) || (x==z) = 2
 |otherwise = 0

--7º
ehZero :: Integer -> Bool
ehZero 0 = True
ehZero _ = False

--8º
sumTo :: Integer -> Integer
sumTo x
 | x==0 = x
 | otherwise = x + sumTo(x-1)

--9º
potencia :: Integer -> Integer -> Integer
potencia n k 
 | k==1 = n
 |otherwise = n * potencia n (k-1)

-- 10º   
binomial :: Integer -> Integer -> Integer
binomial n 0 = 1
binomial 0 k = 0
binomial n k = binomial (n-1) k + binomial(n-1) (k-1) 

-- 11º
--tribonacci :: Integer -> Integer
--tribonacci 1 = 1
--tribonacci 2 = 1
--tribonacci 3 = 2

--12º
addEspacos :: Int -> String
addEspacos n 
 | n==0 = ""
 | otherwise= " " ++ addEspacos(n-1)

--13º
paraDireita :: Int -> String -> String
paraDireita n str = addEspacos n ++ str

--14º
--imprimeTabela :: Int -> String
--imprimeTabela n = cabecalho ++ imprimeSemanas n ++ imprimeTotal n ++ imprimeMedia 
