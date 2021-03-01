{- *Main> [ehPar x | x <- [1..10]]
[False, True, False, True, False, True, False, True, False, True]

*Main> [ehPar (x*x) | x <- [1..10]]
[False, True, False, True, False, True, False, True, False, True]
-}
ehPar :: Int -> Bool
ehPar x = x `mod` 2 == 0

-- [exp_x | x <- l, filtro1, filtro2,filtro3...]

addPairs :: [(Int, Int)] -> [Int]   
addPairs listaPares = [ p+s |(p,s) <- listaPares ]

addPairs2 :: [(Int, Int)] -> [Int]   
addPairs2 listaPares = [ fst p + snd p | p <- listaPares ]

addPairsFiltro :: [(Int, Int)] -> [Int]   
addPairsFiltro listaPares = [ p+s |(p,s) <- listaPares, p<s ]

addPairsFiltroPar :: [(Int, Int)] -> [Int]   
addPairsFiltroPar listaPares = [ p+s |(p,s) <- listaPares, ehPar p ]

somaDoisGeradores :: Int -> [Int]
somaDoisGeradores n = [x+y | x <-[1..n], y <- [1..x]]

triangulos :: [(Int, Int, Int)]
triangulos = [(x,y,z) | x <- [1..100], y <- [1..100], z <- [1..100], z*z == x*x+y*y]

-- construtor de uma lista
--(:) :: a -> [a] -> [a]
--polimorfismo

tamListaInt :: [Int] -> Int
tamListaInt [] = 0 --caso base
tamListaInt (x:xs) = 1 + tamListaInt xs --caso recursivo

{-
tamLista[1..3]
= tamListaInt[1,2,3]
= tamListaInt 1:[2,3]
= 1+ tamListaInt[2,3]
= 1+tamListaInt 2:[3]
= 1+1+tamListaInt 2:[3]
= 1+1+tamListaInt 3:[]
= 1+1+1+tamListaInt[]
= 1+1+1+0
=3
-}

tamListaBool :: [Bool] -> Int
tamListaBool [] = 0
tamListaBool (x:xs) = 1 + tamListaBool xs

tamLista :: [a] -> Int
tamLista [] = 0
tamLista (x:xs) = 1+ tamLista xs

mzip :: [t] -> [u] -> [(t,u)]
mzip [](b:bs) = []
mzip (a:as)[] = []
mzip (a:as)(b:bs) = (a,b) : mzip as bs
--mzip _ _ = [] no lugar das linhas 60 e 61

parOuImpar :: Int -> String
parOuImpar n = "O valor eh " ++ (case (ehPar n) of
                                    True -> "par"
                                    False -> "impar")