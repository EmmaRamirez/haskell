# Higher Order functions

Every function in Haskell officially only takes on parameters. So how is it that we define and use several funcs with multiple parameters? Answer: **curried functions.**

```Haskell
max 4 5
5
(max 4) 5
5
```

**Function application** is simply between a space between two things. The space is sort of like an operator with the highest precedence.

If we call a function with too few parameters, we get back a **partially applied function.**

```Haskell
multThree :: (Num a) => a -> a -> a -> a
multThree x y z = x * y * z
```

Also written as multThree :: (Num a) => a -> (a -> (a -> a)).

```Haskell
compareWithHundred :: (Num a, Ord a) => a -> Ordering
compareWithHundred x = compare 100 x
```


## Higher-Ordersim
```Haskell
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)
```
