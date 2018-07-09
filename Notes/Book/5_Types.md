# Types

A datatype delcaration defines a type constructor and data constructors. Data constructors are the values of a particular type; they are also functions that let us create data, or values, of a particular type. In Haskell, you cannot create untyped data.

## What are types for?

In essence, syntactic sugar over variables, abstractions, etc. Typed Lambda calculus came as System F in the 70s, and Haskell improved on system F.

Type systems in logic => impose constraints => enforce correctness

Typechecking occurs at compile time

## How to read type signatures

```haskell
't' :: Char         -- 't' has the type Char
"julie" :: [Char]   -- "julie" has the type String (an array of Char)
True :: Bool        -- True has the type Bool
```

Compiler gives us the type with broadest applicability (most polymorphic) and say it's a _constrained_ polymorphic type (Num a => a in this case)

```haskell
13 :: Num a => a
```

You can make it more concrete
```haskell
let x = 13 :: Integer
:t x
x :: Integer
```

### Understanding the function type

The arrow (->) is the type constructor for functions in Haskell. It's baked into the language, but syntactically it works like other types.

```haskell
fst :: (a, b) -> a
       [1] [2]   [3]
```

1. The first type parameter of `fst` has the type (a, b). The tuple type itself takes two args _a_ and _b_.

2. The function type (->) has two parameters. One is (a, b) and one is the result _a_.

3. The result of the function has type _a_. It's the same _a_ as the one in the tuple.

Because no operation interjects, we can determine that the _a_ in the function input must be the same _a_ as the function output.

### Typeclass-constrained type variables

