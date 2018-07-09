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

## Currying

All functions in Haskell take on argument and return one result. Instead, functions are curried. Let's break down addition:

```
(+) :: Num a => a -> a -> a
        [1]        [2]    [3]
```

1. Typeclass that a must have an instance of `Num`. Addition is defined in the `Num` typeclass.

2. The boundaries of 2 demarcate what you might call the two parameters to the function (+) take one arg and return one result. **Functions in Haskell are nested like Matryoshka dolls in order to accept "multiple" arguments**.

3. This is the result type for this function. It will be a number of the same type as the two inputs.

### Partial application

`partial application` is a strategy for only applying a portion of a function's arguments

```haskell
addStuff :: Integer -> Integer -> Integer
addStuff a b = a + b + 5
```

`addStuff` takes two integer args and returns an integer result

```haskell
Prelude> :t addStuff
addStuff :: Integer -> Integer -> Integer
Prelude> let addTen = addStuff 5
Prelude> :t addTen
addTen :: Integer -> Integer
Prelude> let fifteen = addTen 5
Prelude> fifteen
15
Prelude> addTen 15
25
Prelude> addStuff 5 5
15
```

fifteen is equal to addStuff 5 5, because addTen is equal to addStuff 5

### Manual currying and uncurrying

Haskell is curried by default, but you can uncurry functions. Uncurrying means un-nesting the functions and replacing the two functions with a tuple of two values.

If you uncurry (+) the type changes from `Num a => a -> a -> a` to `Num a => (a, a) -> a` which better fits the description "takes two arguments, returns on result"

- Uncurried functions: One function, many arguments
- Curried functions: Many functions, one argument piece

### Currying & uncurrying existing functions

You can curry and uncurry functions with multiple parameters generically

```haskell
let curry f a b = f (a, b)
curry :: ((t1, t2) -> t) -> t1 -> t2 -> t
fst :: (a, b) -> a
curry fst 1 2
```

```haskell
let uncurry f (a, b) = f a b
uncurry :: (t1 -> t2 -> t) -> (t1, t2) -> t
(+) :: Num a => a -> a -> a
-- (+) 1 2
-- 3
uncurry (+) (1, 2)
```

### Sectioning
_Sectioning_ refers to partial application of infix operators, which has a special syntax and allows you to choose whether the argument you're partially applying the operator to is the second or first argument.

```
let x = 5
let y = (2^)
let z = (^2)
y x
-- 32
z x
-- 25
```

Argument order doesn't matter. Use partially applied functions mostly for maps and folds, etc. With noncommutative oeprators, this is important to be cautious of.

## Polymorphism

_Polymorph_ refers to Greek poly + morph (many forms). _Monomorphic_ = made of one form.

Pm type variables give us the ability to implement expressions that can accept arguments and return results of different types without having to write variations on the same expression for each type.

Type signatures have three kinds of types: concrete, constrained polymorphic, or parametrically polymorphic.

Parametric polymorphism refers to parameters that are fully polymorphic.

`identity` function `id` comes wiith Prelude and is the identity for any value, and will pass the same value.

```haskell
id :: a -> a
```

