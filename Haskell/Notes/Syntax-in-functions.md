# Syntax in Functions

```
lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck pal"
```

Functions can fail if they use a non-exhaustive pattern.

**Patterns** break up something according to a pattern and bind it to names whilst still keeping a reference to the whole thing. You do that by putting a name and a @ in front of a pattern. For instance, the pattern xs@(x:y:ys). You can get the whole list via xs instead of typing out the whole thing again.

```Haskell
capital :: String -> String
capital "" = "Empty string, whoops!"
capital all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]
```

Returns:
ghci> capital "Dracula"
"The first letter of Dracula is D"

Can't use ++ in pattern matches. This is because of the nature of lists, which don't allow ++ concatenation.


## Where!?
We repeat ourselves 3 times in the bmiTell function.
