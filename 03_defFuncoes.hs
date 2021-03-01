quadrado :: Integer -> Integer
quadrado x = x*x

{-
quadrado(2+3)
= (2+3) * (2+3)
= 5 * 5
= 25
-}



addD :: Integer -> Integer -> Integer
addD  x y = 2 * (x + y)

somaDobroQuadrado :: Int -> Int -> Int
somaDobroQuadrado x y = (2*(x * x)) + (2*(y * y))

somaDobroQuadrado2 :: Int -> Int -> Int
somaDobroQuadrado2 x y = dSqX + dSqY
    where
            dSqX = 2 * (x * x)
            dSqY = 2 * (y * y)

somaDobroQuadrado3 :: Int -> Int -> Int
somaDobroQuadrado3 x y = dSq x + dSq y
    where
            dSq m = 2 * (m * m)

somaDobroQuadrado4 :: Int -> Int -> Int
somaDobroQuadrado4 x y = dSq x + dSq y + f
    where
            dSq m = 2 * (m * m)
            f = 6

somaDobroQuadrado5 :: Int -> Int -> Int
somaDobroQuadrado5 x y = 
    let dSqX = 2 * (x * x)
        dSqY = 2 * (y * y)
    in
        dSqX + dSqY

fat :: Int -> Int
fat n
 | n == 0 = 1 --caso base
 | n >0 = fat(n-1)*n --caso recursivo

fib :: Int -> Int
fib n
 |n==0 = 0
 |n==1 = 1
 |n>1 = fib(n-2) + fib(n-1)

ehImpar :: Int -> Bool
ehImpar n
 | n <= 0 = False 
 | otherwise = ehPar(n-1)

ehPar :: Int -> Bool
ehPar n
 |n<0 = False 
 |n==0 = True 
 |otherwise  = ehImpar(n-1)

tailFat :: Integer -> Integer -> Integer
tailFat 0 x = x 
tailFat n x = tailFat (n-1) (n*x)
fat' n = tailFat n 1

{-
tailFat 3 1
 = tailFat (3-1) (3*1)
 = tailFat (2-1) (2*3)
 = tailFat (1-1) (1*6)
 = 6
-}

vendas 0 = 2
vendas 1 = 7
vendas 2 = 3
vendas 3 = 5
vendas 4 = 1

totalVendas :: Int -> Int
totalVendas n
 |n==0 = vendas 0
 |otherwise = totalVendas(n-1)+vendas n

totalVendasCP :: Int -> Int
totalVendasCP 0 = vendas 0
totalVendasCP n = totalVendasCP(n-1) + vendas n


nOr :: Bool -> Bool -> Bool
nOr True True = True
nOr True False = True
nOr False True = True
nOr False False = False 

nOr2 :: Bool -> Bool -> Bool
nOr2 True x = True
nOr2 False x = x

nOr3 :: Bool -> Bool -> Bool
nOr3 True _ = True -- Underline diz que exige um segundo argumento, mas q ele n importa
nOr3 False x = x