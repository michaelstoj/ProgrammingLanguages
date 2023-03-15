import Distribution.Simple.Utils (xargs)
f x = x + 3
g y = y + 5

double x = x + x

factorial' n = product [1..n]
average ns  = sum ns `div` length ns

a = b + c
    where
      b = 1
      c = 2
d = a * 2

n' = a `div` length xs
    where
        a = 10
        xs = [1,2,3,4,5]


absA n = if n >= 0 then n else (-n)

signumA n = if n < 0 then -1 else
    if n == 0 then 0 else 1



odds n = map f [0..n-1]
         where
            f x = x*2 + 1


