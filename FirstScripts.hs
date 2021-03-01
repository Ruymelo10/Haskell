--      The value size is an integer (Integer), defined to be 
--      the sum of twelve and thirteen.

size :: Integer
size = 12+13

--      The function to square an integer.

square :: Integer -> Integer
square n = n*n

--      The function to double an integer.
        
double :: Integer -> Integer
double n = 2*n

--      An example using double, square and size.
         
example :: Integer
example = double (size - square (2+2))
--1º
-- O propósito do let é criar uma variavel local no prelude
-- Aparentemente o propósito do it é copiar o valor do último output

--3º
-- A primeira linha da erro porque espera apenas um parametro e recebe dois
-- A segunda linha da um erro por que double recebeu um argumento de função que por sua vez,
-- não tinha parametro
-- A terceira linha trocou-se a ordem do parametro e da função

--4
f1 :: Integer -> Integer
f1 x = square(double x)

f2 :: Integer -> Integer
f2 x = double(square x)

--5º
--3.9
threeDifferent :: Integer -> Integer -> Integer -> Bool
threeDifferent m n p = (m /= n) && ( m /= p) && (p /= n)

-- 3.10
fourEqual :: Integer -> Integer -> Integer -> Integer -> Bool 
fourEqual a b c d = (a==b) && (b==c) && (c==d)

threeEqual :: Integer -> Integer -> Integer -> Bool
threeEqual x y z = (x==y) && (y==z)

fourEqual' :: Integer -> Integer -> Integer -> Integer -> Bool 
fourEqual' a b c d = threeEqual a b c && (a == d)

-- 3.11
-- threeEqual (2+3) 5 (11 `div` 2)
-- threeEqual ((2+3) == 5) && (5 == (11 `div` 2))
-- threeEqual ((5) == 5) && (5 == (11 `div` 2)  )
-- threeEqual ((5) == 5) && (5 == (5))
-- threeEqual True && True
-- True


--mystery (2+4) 5 (11 `div` 2)
--mystery not (((2+4) == 5) && (5 ==(11 `div` 2)))
--mystery not (((6) == 5) && (5 ==(11 `div` 2)))
--mystery not (((6) == 5) && (5 ==5))
--mystery not (False && True)
--mystery not (False)
-- True

-- threeDifferent (2+4) 5 (11 `div` 2)
-- threeDifferent ((2+4))/= 5) && ( (2+4)) /= (11 `div` 5))) && (5 /= (11 `div` 5)))
-- threeDifferent (6)/= 5) && ( (2+4)) /= (11 `div` 5))) && (5 /= (11 `div` 5)))
-- threeDifferent (6)/= 5) && ( 6 /= (11 `div` 5))) && (5 /= (11 `div` 5)))
-- threeDifferent (6)/= 5) && ( 6 /= 5) && (5 /= (11 `div` 5)))
-- threeDifferent (6)/= 5) && ( 6 /= 5) && (5 /= 5)
-- threeDifferent False && ( 6 /= 5) && (5 /= 5)
-- threeDifferent True && True && False
-- threeDifferent False 

-- fourEqual (2+3) 5 (11 `div` 2) (21 `mod`11)
-- fourEqual ((2+3))==5) && (5==(11 `div` 2)) && ((11 `div` 2)==(21 `mod`11))
-- fourEqual (5==5) && (5==(11 `div` 2)) && ((11 `div` 2)==(21 `mod`11))
-- fourEqual (5==5) && (5==5) && ((11 `div` 2)==(21 `mod`11))
-- fourEqual (5==5) && (5==5) && (5==(21 `mod`11))
-- fourEqual (5==5) && (5==5) && (5==10)
-- fourEqual True && (5==5) && (5==10)
-- fourEqual True && True && (5==10)
-- fourEqual True && True && False
-- False



