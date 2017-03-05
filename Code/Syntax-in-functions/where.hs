{-
  We put the keyword 'where' after the guards
  and indent as much as the pipes
  These names are visible across the guards
  and give us the advantage of not having to
  redeclare something
  it improves readability
-}

bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
  | bmi <= skinny = "skinny"
  | bmi <= normal = "normal"
  | bmi <= fat    = "fat"
  | otherwise
  where bmi = weight / height ^ 2
        (skinny, normal, fat) = (18.5, 25.0, 30.0)


initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
    where (f:_) = firstname
          (l:_) = lastname

{-
  'Where' bindings can also be nested.
  It's a common idiom to make a function and define
  some helper function in its where clause and then
  give those functions helper functions as well,
  making each have its own where clause.
-}
        
