-- type declaration
-- we take an ordering of a and convert to a then any
quicksort :: (Ord a) => [a] -> [a]
-- an emtpy array leads to nothing
quicksort [] = []
quicksort (x:xs) =
    -- bring to where a is less than x
    let smallerSorted = quicksort [a | a <- xs, a <= x]
        -- biggerSorted is where we quicksort to the larger
        biggerSorted = quicksort [a | a <- xs, a > x]
        -- then we add smaller sets to x to the bigger sets
    in smallerSorted ++ [x] ++ biggerSorted
