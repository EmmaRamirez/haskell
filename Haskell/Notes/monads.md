# Monads

- No Shared Mutable State
- Shared Mutable State -> not allowed in Haskell

functions
Monoids
functions
Monads

## Functions

```
int x;
x : int
```

Variable x has type int, versus x is a member of the set of int.
Types & sets are almost the same thing.

`x:int` is an assertion that x is a member of int.

`int f(int x)`
`f :int -> int` a function being a thing that takes in an int and gives you an int.

`x:a` asserts x has type a
`f : a -> a` takes an a and gives you an a

`static a f<a> (a x)` short hand for a generic type

`g : a -> a`
How do we combine f and g?

## Monoids

```
f(g(a))
g(f(a))
f (g a)
g (f a)
```
*synonyms* = funciton application
**currying** = functions of multiple arguments, what we try to avoid in above

```
(f ~ g) = h : a -> a
```
Took two functions and created a new function of the same type. Also known as a **monoid**. Two things of the same type that create a thing of the same type.

The way to control complexity is compositionality.

A # of smaller 'simpler' things joined together.

It means you can change components without destroying them. Correct by construction.

Clock example: A monoid is a collection of things plus a rule for combining the things and that rule obey some rules.

Numbers on a clock form a monoid
(x + y) % 12
You can take any two numbers and you get a number.
(x + ( y + z)) = (x + y) + z
Must satisfy this rule.

Monoid must contain a special member such that x + 12 = x && 12 + x = x
A monoid *does not have to follow communitivity**

f (g a) =/= g (f a)

A monoid is a simple concept for a set of things.

Two meta rules: associativity and existence of a unit or zero (generically or abstractly).

## functions
If you have two f's that don't form a singular type, they are part of a monoidal category, but not a monoid.

(f ~ g) ~ h = f ~ (g ~ h)

f (g (h a))
f (g (h a)) = No way function composition cannot be associative.

```
id : a -> a
id a = a
(f ~ id) = f (id a) = f a
```
Functions under composition are a monoid.

## Monads
```
x: a
f : a -> Ma
g : a -> Ma
h : a -> Ma
```
Returns a transform of a.

Functions that take a's and return M of a's. *M* is a type constructor. Every function will take a and return a with some extra data to it. *M* is same for every compositional function.

```
a => .... --anonymous function expression
λ --lambda
\a -> ... --haskell notation
```
The function of a that does etc.

No end of complexity. Linq is monadic. Designed by Meyer.

If I can get to compositionality. Functions under composition is monoid.

```
\a -> (f a) >>= \a -> (g a)
```
What's the type of f of a? Ma (a transformation of a). (g a)'s type is also Ma.

Why don't we just write it as g? Lambda does nothing other than call g on a.

We have to take (f a) and shove that in.

The composition of these two functions is a function that takes an a and returns an Ma.

Lambda expression with a bind expression.

The result of the entire thing is Ma.

```
\a -> (f a) >>= \a -> (g a)
```

Analog of composition so it has to observe associativity.

```
data Maybe a = Nothing | Just a
```

Maybe represents a type that may fail to return a result. The Maybe type suggests a strategy for combining computations which return Maybe alues. If a combined computation consist of one computation B that depends on the result of another computation A, then the combined computation should yield Nothing whenever A or B yield nothing and the combined computation should yield the result of B applied to the result of A when both succeed.

Monads may exist for I/O, have state, may return multiple results, etc.

## Why should I understand Monads?

Monads play a central role in I/O in Haskell. It is not essentail to understand Monads to do I/O in Haskell, but understanding I/O monads will improve your code.

1. Modularity -- they allow computations to be composed from simpler computations and separate the combination strategy from the actual computations being performed.
2. Flexibility -- they allow functional programs to be much more adaptable than equivalent programs written without monads. This is because the monad distills the computational strategy into a single place instead of requiring it be distributed through the entire program.
3. Isolation -- they can be used to create imperative-style computational structures which remain safely isolated from the main body of the functioanl program. This is used for incorporating side-effects such as I/O and state (which violates referential transparency) into a pure functional language like Haskell.

## Meet the Monads

### Type Constructors
A *type constructor* is a parameterized type definition used with polymorphic types. By supplying a type constructor with one or more concrete types, you can construct a new concrete type in Haskell. In the definition of Maybe:

```
data Maybe a = Nothing | Just a
```

Maybe is a type constructor, Nothing and Just a are data constructors. You can construct a data value by applying the Just data constructor to a value.

```
country = Just "China"
```

In the same way, you can contruct a type by applying the Maybe type constructor to a type.

```
lookupAge :: DB -> String -> Maybe Int
```

polymorphic types are like containers that are capable of holding values of many different types. So Maybe Int can be thought of as a Maybe container holding an Int value (or Nothing) and Maybe String would be a Maybe container holding a String value (or Nothing).

In Haskell, we make the type container polymorphic so we could writing "m a" to represent a container of some type holding a value of some type.

"kind errors" indicate that you are not using the type constructors correctly.

### Maybe a monad
