boomBang xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
length' xs = sum [1 | _ <- xs]
-- _ means we don't care what we draw from the list anyway
-- so instead of writing a variable name, we just write _
removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]
