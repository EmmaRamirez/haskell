# Types and Typeclasses

Haskell has a static type system. The type of every expression is known at runtime, leading to safer code.

Haskell has type inference--it can infer what types are on its own.

```
:t lets you see its type
```

## Declaring functions explicitly
```Haskell
removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]
```

Another example:
(Note: there is no distinction between )
```Haskell
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z
```

`Int` is integer.
`Integer` is used for large integers.
`Float` is a single-precision decimal real.
`Double` is a float with double precision.
`Bool` is a boolean.
`Char` represents a character. A string is a list of chars

[a] -> any type
*Type variable* a type of any type.
Functions that have type variables are called *polymorphic functions.*

# Typeclasses
