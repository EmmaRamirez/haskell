# Monads

- No Shared Mutable State
- Shared Mutable State -> not allowed in Haskell

functions
Monoids
functions
Monads

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
