# Because Pigs Can't Fly

## Basic Datatypes

Haskell has a robust and expressive type system. Types play an important role in the redability, safety, and maintanbility of Haskell code as it allows us to classify and delimit data, thus restricting the forms of data our programs can process.

This chapter deals with
- Reviewing types from previous chapters
- Learning about data types, type constructors, and data constructors
- Work with predefined Datatypes
- Learn more about type signature and a bit about type classes

## What are types?
- Expressions, when evaluated, reduce to values
- Every value has a type
- Types are how we group a set of values that share something in common

## Anatomy of a data declaration
_Data declaration_ are how datatypes are defined.

The type constructor is the name of the type and is capitalized. When you are reading or writing type signatures (the type level of your code), the type names or type constructors are what you use.

```Haskell
data Bool = False | True
     [1]    [2]  [3] [4]
```

1. Type constructor for datatype `Bool`. This is the name of the type and shows up in type signatures.
2. Data constructor for the value `False`.
3. Pipe `\` indicates a _sum type_ or logical disjunction: "or." So, a `Bool` value is either `True` or `False`.
4. Data constructor for the value `True`.


### Exercises: Mood Swing

Given the following datatype, answer the following questions:

```Haskell
data Mood = Blah | Woot deriving Show
```

1. Type constructor (Mood)
2. Function requires a Mood value, what values could you use? (Blah or Woot)
3. We are trying to write a function changeMood to change Chris's modod. It should act like `not` in that, given one value it returns the _other_ value of the same type. What's wrong with that?
4. Now we want to write the function that changes his mood. Given an input mood, it gives us the other one. Fix any mistakes and complete the function.


## Numeric Types

**Integral Numbers** are whole numbers.
1. Int. Fixed precision.
2. Integer. Suports arbitrarily small or large numbers.

**Fractional Numbers**
1. Float.
2. Double.
3. Rational. arbitrarily precise, but not as efficient as Scientific.
4. Scientific. This is a space-efficient and almost-arbitrary precision scientific number type.
