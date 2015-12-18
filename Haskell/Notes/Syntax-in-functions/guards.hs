bmiTell :: (RealFloat a) => a -> String
bmiTell bmi
  | bmi <= 18.5 = "You're underweight."
  | bmi <= 25.0 = "You're supposedly normal."
  | bmi <= 30.0 = "You're fat."
  | otherwise   = "Morbidly obese"
{-
  Guards are indicated by pipes
  that follow a functions name and its parameters
  indented a bit to the right and lined up
  big if else tree in imperative languages
  more readable
  otherwise = True catches everything
-}

bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
  | weight / height ^ 2 <= 18.5 = "Underweight"
  | weight / height ^ 2 <= 25.0 = "Normal"
  | weight / height ^ 2 <= 30.0 = "Overwight"
  | otherwise           = "Morbidly obese."
{-
  Note that there is no = after the first function declaration
-}

max' :: (Ord a) => a -> a -> a
max' a b
  | a > b     = a
  | otherwise = b

-- inline Guards
max' :: (Ord a) => a -> a -> a
max' a b | a > b = a | otherwise = b

myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
  | a > b     = GT
  | a == b    = EQ
  | otherwise = LT

{-
  Using the backticks we can make the function
  and infix function, increasing readability
-}
