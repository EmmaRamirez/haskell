# Functional Patterns
# Make it func-y
A **function** is an instrument for producing an output from an input, or argument. Functions are applied to arguments which binds their parameters to values. The fully applied function with its arguments is then evaluated to produce the output or result. In Haskell,
- functions are first class entities that
- can be values in expressions, lists, or tuples
- can be passed as arguments to a function
- can be returned from a function as a result
- make use of synctactic patterns

# Arguments and parameters
All functions take in one argument and return one result. Functions are *defined* by the fact they take an argument and return a result.

## Declaring parameters
```Haskell
  myNum :: Integer
  myNum = 1

  myVal = myNum
```
And if we qury the type of myVal
```Haskell
Prelude> :t myVal
myVal :: Integer
```
