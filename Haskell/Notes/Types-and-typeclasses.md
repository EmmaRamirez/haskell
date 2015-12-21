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
Functions that have type variables are called **polymorphic functions.**

# Typeclasses
Everything before `=>` is a **class constant.**

Eq is used for equality testing.
Ord is for types that have an ordering.

Show members can be presented as stirngs.
Read is the opposite. Read returns a type which is a member of read.

Use **explicit type annotations.**

```
read "5" :: Int
read "5" :: Float
(read "5" :: Float) * 4
read "[1, 2, 3, 4]" :: [Int]
```

Enum members are sequentially ordered types. They can be enumerated. The main advantage of the Enum typeclass is that we can use its type in list ranges.

Bounded members have an upper and lower Bounded.


## Where!?
