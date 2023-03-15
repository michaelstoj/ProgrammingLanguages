
import Prelude hiding ((||))
import Prelude hiding ((&&)) 
import Control.Monad.Zip
import Language.Haskell.TH.Ppr (where_clause, bar)
n = a `div` length xs
    where 
        a = 10
        xs = [1,2,3,4,5]



lasta xs = head (drop (length xs -1) xs)

lastb xs = head (reverse xs)

lastc xs = xs !! (length xs-1) 


inita xs = reverse (tail (reverse xs))

initb xs = take (length xs -1 ) xs

add :: (Int,Int) -> Int
add (x,y) = x + y



signumA n =if n < 0 then -1 else 1

absA n | n >=0 = n | otherwise = -n

absB :: Int -> Int 
absB n = if n >= 0 then n else -n

addA' :: Int -> (Int -> Int)
addA' x y = x+y

True && b = b
False && _ = False

headA   :: [a] -> a
headA (x:_)  = x


oddsA n = map f [0..n-1] where f x = x*2 + 1


odds n = map(\x->x*2+1)[0..n-1]

tailA :: [a] -> [a]
tailA (_:xs) = xs

safeHead xs = if null xs then [] else head [xs]

safeTail xs = if null xs then [] else tail xs

safeTail' xs |  null xs = []  | otherwise = tail xs

safeTail'' [] = []
safeTAil'' xs = tail xs

False || False  = False
True || _ = True 
False || b = b

a $$ b = if a then if b then True else False else False


halve xs = ((take s xs), (drop s xs))  where s = (length xs) `div` 2

halve' xs = ((take (length xs `div` 2) xs), (drop (length xs `div` 2) xs))  

remove n xs = take n xs ++ drop (n+1) xs where n = (div (length xs) 2) 

[(x,y) | x <- [1,2,3], y <- [4,5]]
[(x,y) | y <- [4,5], x <- [1,2,3]]

concat' xss = [x | xs <- xss, x <- xs]
concat [[1,2,3],[4,5],[6]]


[x | x <- [1..10], even x]

factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

prime :: Int -> Bool
prime n = factors n == [1,n]

primes n = [x | x <- [2..n], prime x]

pairs xs = zip xs (tail xs)

sorted xs =  and [x <= y | (x,y) <- pairs xs]

positions x xs = [i | (y,i) <- zip xs [0..n], x == y]  where n = length xs - 1

