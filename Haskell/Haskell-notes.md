# What is Haskell?
- A purely functional programming language.
  - Not like imperative, which relies on executions of a specific sequence of tasks.
  - Don't let it what to do, but rather what stufff is.
  - Functions don't have side effects--they just return a value.
  - **Referential transprency**: a function can be called multiple times and return the same result, allowing the compiler to reason about the program and prove that a function is "correct."
- Haskell is lazy.
  - It won't execute functions unless it's forced to.
  - Programs are a series of **transformations on data.**
- Statically typed
  - Types are declared--i.e. a string or a number.
    - Possible errors are caught at compile time.
  - Type inference system
    - Don't have to explicitly label every piece of code with a type because the system can figure it out.
- Elegant and concise
  - Haskell tends to be shorter because it uses a lot of high level concepts.
- Made by Academics
- What you need
  - A compiler &amp; a text editor.

## Getting Started
To set the prompt to something else:
```
:set prompt "ghci>"
```

Note that to do negative numbers, you must wrap them in parentheses:
```
ghci> 50 + (-2)
```

**Infix function**: a function between parameters, unlike a *prefix function*, which is between them.

```
ghci> succ 8
9
```
In the above example, we use the succ function, which returns a successor of the given input.

Min & Max work as you'd expect:
```
ghci> min 9.10
9
ghci> min 3.4 3.2
3.2
ghci> max 100 101
101
```

Function application generally applies to the nearest reference, or whatever is in quotation marks for the function.
