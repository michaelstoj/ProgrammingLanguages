import GHC.Unicode (isLower)
abs' n = if n >= 0 then n else -n

absB n | n >= 0 = n
    | otherwise = -n

odds n = map(\x->x*2+1)[0..n-1]

--   [x^2 | x <- [1..5]] 

-- [(x,y) | x <- [1,2,3], y <- [4,5]]

-- [(x,y) | x <- [1..3], y <- [x..5]]

-- [x | x <- [1..10], even x]

factors n =   [x | x <- [1..n], n `mod` x == 0]

prime n = factors n == [1,n]

twice f x = f (f x)

primes n = [x | x <- [2..n], prime x]

pairs xs = zip xs (tail xs)

positions x xs =
   [i | (x',i) <- zip xs [0..n], x == x']
   where n = length xs - 1

qsort (x:xs) =
   qsort smaller ++ [x] ++ qsort larger
   where
      smaller = [a | a <- xs, a <= x]
      larger  = [b | b <- xs, b > x]
      
-- sum (x:xs) = x + sum xs

f . g  = \x -> f (g x)

lowers xs = length [x | x <-xs, isLower x]

factorial' n = product [1..n]

-- product (n:ns) = n * product ns

-- reverse (x:xs) = reverse xs ++ [x]

twice' n = n + n 
double' n = n * 2

-- map (1+) [1,4,56]

-- filter even [1..10]