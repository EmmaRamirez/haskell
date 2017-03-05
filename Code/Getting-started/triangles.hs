let triangles = [ (a, b, c) | c <- [1..10], b <- [1..10], a <- [1..10] ]
-- draw from three lists and combine them into a triple
let rightTriangles = [ (a, b, c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]
-- returns a list where the numbers form right triangles
let rightTriangles' = [ (a, b, c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a + b + c == 24]
-- returns [(6, 8, 10)]
