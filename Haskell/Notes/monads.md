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
