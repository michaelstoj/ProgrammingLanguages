# absolute value
abs'  :: Int -> Int
abs' n = if n >= 0 then n else -n

# signed 
signum' n = if n < 0 then -1 else if n == 0 then 0 else 1

# abs ""
as'' n | n>=0 = n | otherwise x -n

# not function
not' true = false
not' false = true

head' (x:xs) = x

# write safe head, head but will work on empty list
safehead xs = if null xs then [] else head [xs]

signum :: Int -> Int
