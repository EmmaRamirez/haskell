-- Import a module
import Data.List
import System.IO

--- MATH ---
sumOfVals = sum [1..1000]

piVal = pi
ePow9 = exp 9
logOf9 = log 9
squared9 = 9 ** 2
truncateVal = truncate 9.999
roundVal = round 9.999
ceilingVal = ceiling 9.999
floorVal = floor 9.999

--- LISTS ---

primeNumbers = [3, 5, 7]

morePrimes = primeNumbers ++ [11, 13, 17]

favNums = 2 : 4 : 54 : 55 : []

multList = [[34, 44], [322, 32]]

morePrimes2 = 2 : morePrimes

lenPrime = length morePrimes2

revPrime = reverse morePrimes2

isListEmpty = null morePrimes2

secondPrime = morePrimes2 !! 1

firstPrime = head morePrimes2

lastPrime = last morePrimes2

-- Everything but last val
primeInit = init morePrimes2

is7InList = 7 elem morePrimes2

evenList = [2,4..20]

infinPow10 = [10,20..]

many2s = take 10 (repeat 2)

many3s = replicate 10 3

cyclceList = take 10 (cycle [1,2,3,4,5])

listTimes2 = [x * 2 | x <- [1..10]]

listTimes3 = [x * 3 | x <- [x..20], x*3 <= 50]

-- Return all values div by 13 & 9
divisBy9N13 = [x | x <- [1..500], x mod 13 == 0, x mod 9 == 0]


sumOfLists = zipWith (+) [1,2,3,4,5] [6,7,8,9,10]

listBiggerThan5 = filter (>5) sumOfLists

evensUpTo20 = takeWhile(<-20) [2,4..]

-- foldl applies the operation on each item of a list
--- foldl applies these operations from the right
multOfList = foldl (*) [1,2,3,4,5]

--- List comps ---

pow3List = [3^n | n <- [1..10]]

pow3ListDiv9 = [3^n | n <- [1..10], 3^n mod 9 == 0]

multTable = [[x * y | y <- [1..10]] | x <- [1..10]]

-- Functions --

addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (x, y) (x2, yx) = (x + x2, y + y2)

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

productFactorial n = product [1..n]

isOdd :: Int -> Bool
isOdd n
    | n mod 2 == 0 = False
    | otherwise = True

isEven n = n mod 2 == 0

whatGrade :: Int -> String
whatGrade age
	| (age >= 5) && (age <= 6) = "Kindergarten"
	| (age > 6) && (age <= 10) = "Elementary School"
	| (age > 10) && (age <= 14) = "Middle School"
	| (age > 14) && (age <= 18) = "High School"
	| otherwise = "Go to college"


batAvgRating :: Double -> Double -> String
batAvgRating hits atBats
	| avg <= 0.200 = "Terrible Batting Average"
	| avg <= 0.250 = "Average Player"
	| avg <= 0.280 = "Your doing pretty good"
	| otherwise = "You're a Superstar"
	where avg = hits / atBats

-- You can access list items by separating letters with : or get everything but
-- the first item with xs
getListItems :: [Int] -> String
getListItems [] = "Your list is empty"
getListItems (x:[]) = "Your list contains " ++ show x
getListItems (x:y:[]) = "Your list contains " ++ show x ++ " and " ++ show y
getListItems (x:xs) = "The first item is " ++ show x ++ " and the rest are "
	++ show xs

-- We can also get values with an As pattern
getFirstItem :: String -> String
getFirstItem [] = "Empty String"
getFirstItem all@(x:xs) = "The first letter in " ++ all ++ " is "
	++ [x]
