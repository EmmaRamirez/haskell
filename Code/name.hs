module Main
  where

import IO

main = do
  hSetBuffering stdin LinBuffering
  putStrLn "Please enter your name: "
  name <- getLine
  putStrLn ("Hello, " ++ name ++ ", how are you?")
