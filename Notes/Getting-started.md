## Getting Started
To set the prompt to something else:
```
:set prompt "ghci>"
```

Note that to do negative numbers, you must wrap them in parentheses:
```
ghci> 50 + (-2)
```

**Infix function**: a function between parameters, unlike a *prefix function*, which is between them.

```
ghci> succ 8
9
```
In the above example, we use the succ function, which returns a successor of the given input.

Min & Max work as you'd expect:
```
ghci> min 9.10
9
ghci> min 3.4 3.2
3.2
ghci> max 100 101
101
```

Function application generally applies to the nearest reference, or whatever is in quotation marks for the function.


## First functions

See Getting-started/functions.hs for further info.

## Lists

See Getting-started/lists.hs for further info.

Lists are *homogenous*, meaning they store elements of the same type.

```
[1,2,3] ++ [9,2,3]
"hello" ++ " " ++ "world"
```

: (cons operator)
```
'A':"SMALL DOG"
4:[3,2,1]
```

!! (gets element out of a list)
Starts at zero, like usual.
```
"Steve" !! 3
[2,3,4,5,666,75,3,34,5] !! 1
```

Lists can also contain lists.
```
ghci> let b = [[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3]]  
ghci> b  
[[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3]]  
ghci> b ++ [[1,1,1,1]]  
[[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3],[1,1,1,1]]  
ghci> [6,6,6]:b  
[[6,6,6],[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3]]  
ghci> b !! 2  
[1,2,2,3,4]
```

```
head [1,2,3,4,5]
tail [3,4,4,5,5]
last [2,3,4,5,6]
init [3,4,5,5,3]

length [2,3,4]
null []
reverse [3,4,5]
take 2 [1,2,4,5]
drop [34,55,33,06]
maximum
minimum
sum
production
4 `elem` [3,4,5,6] -- returns true
```

## Ranges
```
[1..20]
```

`cycle` repeats into an infinite list, so you have to cut it off at some point.

```
take 10 (cycle "LOL")
```

`repeat` is similar

```
take 10 (repeat 5)
```

but does it with only one element.

## Set Comprehensions

```
[x * 2 | x <- [1..10]]
[2,4,6,8,10,12,14,16,18,20]  
```

```
ghci> [x*2 | x <- [1..10], x*2 >= 12]  
[12,14,16,18,20]  
```


```
ghci> [ x | x <- [50..100], x `mod` 7 == 3]  
[52,59,66,73,80,87,94]  
```


## Tuples

Like lists, but differ in:
- used when you know how many values you want to combine and its type depends on how many components it has and the types of its components
- denoted with ()
- components separated by commas

```
[(1, 2), (8, 11), (4, 5)]
```

```
[(1, 2), (3, 4, 5), (3, 5)]
-- RETURNS AN ERROR
```

Tuples are rigid. Singleton lists exist, but not singleton tuples.
