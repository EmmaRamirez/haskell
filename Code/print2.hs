module Print2 where

main :: IO ()
main = do
  putStrLn "Count to four for me: "
  putStrLn "one, two"
  putStr ", three, and"
  putStrLn " four!"
