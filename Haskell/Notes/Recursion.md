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

Now, recursively:
```Haskell
maximum' :: (Ord a) => [a] -> a
maximum' [] = error "Max of empty list"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)
```

## a few more recursive functions
```Haskell
replicate' :: (Num i, Ord i) => i -> a -> [a]
replicate' n x
  | n <= 0    = []
  | otehrwise = x:replicate' (n - 1) x
```
