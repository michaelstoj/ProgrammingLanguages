import Distribution.Simple.Utils (xargs)
import Data.Char
-- [x^2 | x <- [1..7]]

double x = x + x
quadruple x = double x + double x

-- a = (1, 'ab', 5, False)

-- map (+5) [2, 6, 9]

-- rec n = (1/) n
-- dbl n = (*2) n
-- hlf n = (/2) n

-- [x^2 | x <- [1..5]]

-- [(x,y) | x <- [1,2,3], y <- [4,5]]
-- [(x,y) | x <- [1..3], y <- [x..3]]
-- [x | x <- [1..25], even x]

factors n =  [x | x <- [1..n], n `mod` x == 0]
prime n = factors n == [1,n]
primes n = [x | x <- [2..n], prime x]

factorial n = product [1..n]

twice f x = f (f x)

-- map (+1) [1,3,5,7]

map f xs = [f x | x <- xs]

-- filter even [1..10]

-- sum (x:xs) = x + sum xs
-- product (x:xs) = x * product xs
-- and (x:xs) = x && and xs

-- sum = foldr (+) 0

f.g  = \x -> f (g x)

-- getChar :: IO Char
-- putChar :: Char -> IO ()
-- return :: a -> IO a

-- a  = do x <- getChar
--         getChar
--         y <- getChar
--         return (x,y)

-- getLine :: IO String
-- getLine  = do x <- getChar
--               if x == '\n' then
--                  return []
--                else
--                  do xs <- getLine
--                     return (x:xs)

pairs xs = zip xs (tail xs)

sorted xs =   and [x <= y | (x,y) <- pairs xs]

positions x xs =
   [i | (x',i) <- zip xs [0..n], x == x']
   where n = length xs - 1

-- zip "abc" [1,2,3]

lowers xs = length [x | x <- xs, isLower x]

pyths n = [(x, y, z) | x <- [1..n], y <- [1..n], z <- [1..n], x^2 + y^2 == z^2]

perfects n = [x | x <- [1..n], x == sum ( init (factors x))]

scalarProduct xs ys = sum [x * y | (x, y) <- zip xs ys]

factorial' 1 = 1
factorial' n = n * factorial' (n-1)

product' [] = 1
product' (n:ns) = n * product' ns

length' [] = 0
length' (_:xs) = 1 + length' xs

reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

zip' [] _ = []
zip' _ [] = []
zip' (x:xs) (y:ys) = (x,y) : zip' xs ys

drop' 0 xs = xs
drop' _ [] = []
drop' n (_:xs) = drop' (n-1) xs

qsort [] = []
qsort (x:xs) =
   qsort smaller ++ [x] ++ qsort larger
   where
      smaller = [a | a <- xs, a <= x]
      larger  = [b | b <- xs, b > x]


concat' [] = []
concat' (x:xs) = x ++ concat(xs)

replicate' 0 _ = []
replicate' n x = [x] ++ replicate' (n-1) x

replicate'' 0 _ = []
replicate'' n x = x : replicate'' (n-1) x

select' (x:xs) 0 = x
select' (x:xs) i = select' xs (i-1)

elem' _ [] = False
elem' v (x:xs) = v == x || elem' v xs

merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys) = (if x > y then [y,x] else [x,y]) ++ merge xs ys


msort [] = []
msort (x:[]) = [x]
msort xs = merge (msort (take (length xs `div` 2) xs)) (msort (drop (length xs `div` 2) xs))