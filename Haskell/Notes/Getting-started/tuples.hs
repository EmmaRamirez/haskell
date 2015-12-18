fst (8, 11)
-- returns the first element
fst ("Wow", False)
-- returns Wow

snd (9, 11)
-- 11
snd ("Wow", False)
-- False

zip [1, 2, 3, 4, 5] [5, 5, 5, 5, 5]
-- returns the two list items as a tuple with pairs
zip [1..5] ["one", "two", "three", "four", "five"]
-- same, works with range!

zip [1..] ["apple", "orange", "cherry", "mango"]
-- 1.. will match the array elements
