# History of Functional Programming

1930:
Alonzo Church develops the *lambda calculus*, a simple but powerful theory of functions.

1950:
Jon McCarthy develops Lisp, one of the first functional programming languages. Influenced by lambda, but also had imperative assignment in Lisp.

1960s:
ISWIM developed by Peter Landin. "If You See What I Mean", the first pure functional programming language, with no assignments.

1970s:
John Backus develops FP, a functional language that emphasize higher-order functions and reasoning about programs.

Robin Milner developed ML, a hybrid language that took ideas from functional and added imperative assignment.

70s and 80s:
David Turner develops SASL, KRC, then Miranda. Lazy functional languages. He was extremely influential in Haskell, which is also a lazy language.

1987:
Haskell starts to be developed. a "Petri Dish" for programming language research. Haskell 98 defined a stable version of the language.

```Haskell
-- Quicksort
f [] = []
f (x:xs) = f ys ++ [x] ++ f zs
          where
              ys = [a | a <- xs, a <= x]
              zs = [b | b <- xs, b > x]
```
