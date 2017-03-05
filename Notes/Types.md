# Types
## Types
Haskell's type system -- robust and expressive
Types play an important role in the readability, safety, and maintainability of Haskell code.
In the last chapter, we looked at built-in datatypes. Learn about:
- querying and reading type signatures
- see that currying has, unfortunately, nothing to do with food.
- take a closer look at different kinds of polymorphism
- look at type inference and how to declare types for our functions

## What are Types
- Expressions, when evaluated, reduce to a set of values
**Data Constructors** values of a particular type.
in Haskell, you cannot create untyped Data
Static typing means that the types are known to the compiler and checked for mismatches, or type errors, at compile time. Code and typechecks at compile time may still break at runtime, but checking for type errors at compile time significantly reduces the risk of programs breaking at runtime.

## Querying and Reading Types
## Typeclass Constrained Type Variables

## Manual currying and Uncurry
Haskell is curried by default but you can uncurry functions.
"Uncurrying" means un-nesting the functions and replacing the two functions with a tuple of two values (these would be the two values you want to use as an argument).

*Uncurried functions*: One function, many arguments.
*Curried functions*: Many functions, one argument apiece
