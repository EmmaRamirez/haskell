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

Note: Num is not a subclass of Ord. THat means that what constitutes for a number doesn't really have to adhere to an ordering. So that's why we have to specify both the Num and Ord calss constraints when doing addition or subtraction and also comparison.

```Haskell
take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n _
    | n <= 0    = []
take' _ []      = []
take' n (x:xs)  = x : take' (n - 1) xs
```

## Quicksort
See file.
