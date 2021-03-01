inc :: Int->Int
inc n = n+1

twice :: (t -> t) -> t -> t
twice f = f . f
{-
(twice inc) 3
= (inc . inc) 3 (pela definição de twice)
= inc (inc 3) (pela definição de composição)
= inc 4 (pela aplicação de inc)
= 5
-}

iter :: Int -> (t -> t) -> t -> t
iter 0 f = id 
iter n f = (iter(n-1) f) . f
{-
(iter 3 inc) 3
= (iter 2 inc) . inc
= ((iter 1 inc) . inc) inc
= (((iter 0 inc) . inc) inc)
= ((id . inc) . inc ) . inc
-}

dobro :: Int -> Int
dobro n = 2*n

mzip :: [a] -> [b] ->[(a,b)]
mzip (x:xs) (y:ys) = (x,y) : mzip xs ys
mzip _ _ = []

mzipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
mzipWith f (x:xs) (y:ys) = f x y : mzipWith f xs ys
mzipWith f _ _ = []

ehPar :: Int -> Bool
ehPar n = n `mod` 2 ==0

addNum :: Int -> (Int -> Int)
addNum n = h
    where h m = n + m

addNumLambda :: Int -> (Int -> Int)
addNumLambda n = \m -> n+m

mapFuns fs x = map (\f -> f x )fs

--allEqual :: Int -> Int -> Int -> Bool
allEqual :: Int ->( Int -> (Int -> Bool))
allEqual x y z = (x==y) && (y==z)

multiply :: Int -> Int -> Int
multiply m n = m*n

doubleLisy l = map (multiply 2) l