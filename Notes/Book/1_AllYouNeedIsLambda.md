# All You Need is Lambda
- Lambda calculus, 1930s by Alonzo Church
- Lambda calculus formalizes the concept of effective computability, thus determinign which problems, or classes of problems, can be solveed

## What is Functional programming?
- Relies on functions
- Combination of expressions (concrete values, variables, and functions)
- Functions are purely

## What is a function?
- A function is a relation between the set of possible inputs and set of possible outputs
- The function itself defines and representes the relationship

## The Structure of Lambda terms
The lambda has three terms: expressions, variables, and abstractions

- *Expression* refers to the superset of all those things
- *Variables* are potential inputs for functions
- *Abstractions* are functions composed of a head and body

```
𝜆𝑥.𝑥
```

## Beta reduction
When we apply a function to an argument, we substitute the input expression for all instances of bound variables within the body of the abstraction. You also eliminate the head.

```
(𝜆𝑥.𝑥)(𝜆𝑦.𝑦)
[𝑥 ∶= (𝜆𝑦.𝑦)]
𝜆𝑦.y
```

Beta reduction is the process of applying a lambda term to an argument, replacing the bound variables with the value of the argument, and eliminating the head => which tells you the function has been applied.

Below is a beta reduction of a function, where the `[𝑥 ∶= 𝑧]` syntax indicates that `z` will be subsituted for all ocurrences of `x`. Hence, we end up with an identity function.

### Free variables
Are variables that are not named in the head and hence ocurr in the body.

## Multiple Arguments

Each lambda can only bind one parameter and can only accept one argument. **Functions that require multiple arguments have multiple, nested heads.** When you apply it once and eliminate the first (leftmost) head, the next one is applied.

Discovered by Moses Schönfinkel in the 20s, but later rediscovered by Haskell Curry and commonly called _currying_. Hence,

```
𝜆𝑥𝑦.𝑥y is equivalent to 𝜆𝑥.(𝜆𝑦.𝑥𝑦)
```

## Combinators
A _combinator_ is a lambda term with no free variables. Serve only to combine the arguments given.

## Divergence
Not all reducible lambda terms reduce neatly to a beta normal form. Hence, they diverge, which means the reduction process never terminates or end. Reducing terms should ordinarily converge to beta normal form, and divergence is the opposite of convergence.

## Summary

- Functional programming is based on expressions that include variables or constant values, expressions combined with other expressions, and functions.
- Functions have a head and a body and are those expressions that can be applied to arguments and reduced, or evaluated, to a result.
- Variables may be bound in the function declaration, and every time a bound variable shows up in a function it has the same value
- All functions take one argument and return one result
- Functions are a mapping of a set of inputs to a set of outputs. Given the same input, the always return the same result.
