data List a = Nil | Cons a (List a)

head (filter perfect [1..])
  where perfect n = (n === sum (divisors n))

until p f = head . filter p . iterate f

[m..n] -- The list m,m+1,..n
[m..] -- infinite m,m+1
[m,n...p]
[m,n..]

['a'..'z'] -- a, b, c, d, e....z

[x*x | x <- [1..5]] -- [1, 4, 5, 16, 25]
[x*x | x <- [1..5], isPrime x] -- [4, 9, 25]
[(i, j) | i <- [1..5], even i, j <- [i..5]]

filter Char.isLower "Hello World"
-- elloorld

-- foldr
