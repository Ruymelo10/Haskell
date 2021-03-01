total :: (Int -> Int) -> Int -> Int
total f 0 = f 0
total f n = total f(n-1) + f n

vendas :: Int -> Int
vendas 0 = 3
vendas 1 = 7
vendas 2 = 8
vendas 3 = 0
vendas 4 = 2

totalVendas n = total vendas n

sq :: Int -> Int
sq n = n * n

somaQuad :: Int -> Int
somaQuad n = total sq n

dobro :: Int -> Int
dobro n = 2 * n

-- não tem video sobre filtro, mas deu pra pegar as seguintes linhas
ehPar :: Int -> Bool
ehPar n = n `mod` 2 ==0

filtro ::(t -> Bool ) -> [t] -> [t]
filtro f [] = []
filtro f (x:xs)
 |f x = x : filtro f xs
 |otherwise = filtro f xs

filtro' p l = [a | a <- l, p a]


-- fold

{-
foldr1 (++) [[1..4], [6..9], [10..16]]
= (++) [1..4] (foldr1 (++) [[6..9], [10..16]])
= (++) [1..4] ((++) [6..9] (foldr1 (++)[10..16]))
= (++) [1..4] ((++) [6..9] [10..16])
= (++) [1..4] [6,7,8,9,10,11,12,13,14,15,16]
= [1,2,3,4,6,7,8,9,10,11,12,13,14,15,16]
-}
