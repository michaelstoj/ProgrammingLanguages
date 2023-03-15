-- QUESTION 1 
revsort :: Ord a => [a] -> [a]
revsort [] =[]
revsort (x:xs) = (revsort first) ++ [x] ++ (revsort second)
  where
    first = [ y | y <- xs, y >= x ]
    second = [ y | y <- xs, y < x ]

-- QUESTION 2
remove :: Int -> [a] -> [a]
remove _ [] = []
remove 0 (x:xs) = xs
remove n (x:xs) = x : remove (n-1) (xs)

-- QUESTION 3
riffle :: [a] -> [a] -> [a]
riffle [] ys = ys
riffle xs [] = xs
riffle (x:xs)(y:ys) = x : y : riffle xs ys

-- QUESTION 4
msort :: Ord a => [a] -> [a]
msort [] = []
msort [x] = [x]
msort xs = merge(msort start) (msort end)
           where (start, end) = halve xs

halve    :: [a] -> ([a], [a])
halve xs = splitAt (length xs `div` 2) xs

merge [] ys = ys 
merge xs [] = xs 
merge (x : xs) (y : ys) 
   = if x <= y then x : merge xs ( y :ys) else y : merge ( x : xs) ys 
