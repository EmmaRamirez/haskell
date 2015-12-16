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
