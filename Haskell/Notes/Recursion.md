# Recursion


```Haskell
maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum of empty list"
maximum' [x] = x
maximum' (x:xs)
  | x > maxTail = x
  | otehrwise = maxTail
  where maxTail = maximum' xs
```
