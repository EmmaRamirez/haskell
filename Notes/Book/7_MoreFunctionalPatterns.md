# More Functional Patterns

## Make it Func-y

A function is an instruction for producing an output from an input, or argument.
Functions are _applied_ to arguments which binds their parameters to values.

- Haskell functions are first class entries that:
  - can be values in expressions, lists, or tuples;
  - can be passed as arguments to a function;
  - can be returned from a function as a result;
  - make use of syntactic patterns.

## Arguments and parameters

Functions in Haskell may appear to have multiple parameters but this is only the surface appearance; in fact, all functions take one argument and return one result.

All Haskll values can be arguments to functions.

### Declaring Parameters

You name parameters to functions in Haskle by delcaring them between the name of the function, which is always at the left margin and the equal sign.

No Parameters [type is `Integer`]
```Haskell
myNum :: Integer
myNum = 1

myVal = myNum
```

Parameter named f [type is `t -> Integer`]
```Haskell
myNum :: Integer
myNum = 1

myVal f = myNum
```

### Binding variables to values

Let's consider how the binding of variables works. Applying a function binds its parameters to values. Type parameters become bound to a type and function variables are bound to a type.

```Haskell
addOne :: Integer -> Integer
addOne x = x + 1
```

In the above example, we don't know the result until the `addOne` function is applied to an `Integer` value argument. When `addOne` is applied to a value, we say that `x` is now _bound_ to the value the function was applied to. Until a function's arguments have been applied, thereby binding the parameters to values, we cannot make use of the function.

```Haskell
addOne 1 -- x is now bound to 1
addOne 1 = 1 + 1
         = 2

addOne 10 -- x is bound to 10
addOne 10 = 10 + 1
          = 11

bindExp :: Integer -> String
bindExp x = let y 5 in
            "the integer was: " ++ show x
            ++ " and y was: " ++ show y
```

### Anonymous Functions

Not Anonymous
```Haskell
triple :: Integer -> Integer
triple x = x * 3
```

Anonymous
```Haskell
(\x -> x * 3) :: Integer -> Integer
```

Not Anonymous
```Haskell
let trip = (\x -> x * 3) :: Integer -> Integer
```

### The unity of lambda syntax
We often use this syntax when you're passing a function in as an argument to ho functions and that's the only place where that function will be used.

## Pattern Matching

An integral and ubiquitous feature of Haskell.

```Haskell
isItTwo :: Integer -> Bool
isItTwo 2 = True
isItTwo _ = False
```

### Pattern Matching against data constructors

Pattern matching serves a couple of purposes. It enables us to vary what our functions do given different inputs.

`newType`: a special case of data constructor that permits only one constructor and only one field.
