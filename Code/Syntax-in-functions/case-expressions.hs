-- head' :: [a] -> a
-- head' [] = error "No head for empty list!"
-- head' (x:_) = x
--

head' :: [a] -> a
head' xs = case xs of [] -> error "No head for empty lists!"
                      (x:_) -> x


describeList :: [a] -> String
describeList xs = "The list is " ++ what xs
      where what [] = "empty"
            what [x] = "a singleton list."
            what xs = "a longer list"
