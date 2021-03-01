inc :: Int->Int
inc n = n+1

{-
(.) :: (b -> c) -> (a -> b) -> a -> c
(.) inc inc
(.) (Int->Int) (Int->Int) 
-}

ehPar :: Int -> Bool
ehPar n = n `mod` 2 ==0

{-
(.) :: (b -> c) -> (a -> b) -> a -> c
(.) ehPar inc
(.) (Int->Bool) (Int->Int) 
-}

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
