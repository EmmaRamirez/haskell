module StringExercises where

  printCurry :: String -> [Char]
  printCurry x = x + exclamation
    where exclamation :: Char
          exclamation = "!"

  printCurry2 :: String -> Char
  printCurry2 x = x !! 4

  printCurry3 :: String -> [Char]
  printCurry3 x = drop y x
    where y :: Integer
          y = 4

  main :: IO()
  main = do
    putStrLn printCurry
      where x = "Hello"
    putStrLn printCurry3
      where x = "Hello America You Beautiful Bastard"
