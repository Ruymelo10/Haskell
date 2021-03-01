-- 1º
menorMaior :: Int -> Int -> Int -> (Int, Int)
menorMaior x y z
 | (x < y) && (x < z) = if y > z then (x,y) else (x,z)
 | (y < x) && (y < z) = if x > z then (y,x) else (y,z)
 |otherwise = if x > y then (z,x) else (z,y)

--2º
ordenaTripla :: (Int, Int, Int) -> (Int, Int, Int)
ordenaTripla (x,y,z)
 | (x < y) && (x < z) = if y < z then (x,y,z) else (x,z,y)
 | (y < x) && (y < z) = if x < z then (y,x,z) else (y,z,x)
 |otherwise = if x < y then (z,x,y) else (z,y,x)

--3º
type Ponto = (Float, Float)
type Reta = (Ponto, Ponto)

firstCoordPoint :: Ponto -> Float 
firstCoordPoint (x, _) = x

secondCoordPoint :: Ponto -> Float 
secondCoordPoint (_, y) = y

isVertical :: Reta -> Bool
isVertical(x,y)
 | firstCoordPoint x == firstCoordPoint y = True
 |otherwise = False

--4º


