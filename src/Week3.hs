module Week3 where

import Data.Char

-- Ex. 0
sumSquare xs = sum [x^2 | x <- xs]

-- Ex. 2
pyths :: Int -> [(Int, Int, Int)]
pyths n
    = [(x, y , z) | x <- [1 .. n], y <- [1 .. n], z <- [1 .. n],
        x ^ 2 + y ^ 2 == z ^ 2]

-- Ex. 3
factors n = [x | x <- [1 .. n], n `mod` x == 0]

perfects n = [x | x <- [1 .. n], isPerfect x]
    where isPerfect num = sum (init (factors num)) == num

-- Ex. 4
listComp = [(x, y) | x <- [1, 2, 3], y <- [4, 5, 6]]
listComp2 = concat [[(x, y) | y <- [4, 5, 6]] | x <- [1, 2, 3]]

-- Ex. 5
find :: (Eq a) => a -> [(a, b)] -> [b]
find k t = [v | (k', v) <- t, k == k']
positions :: (Eq a) => a -> [a] -> [Int]
positions x xs = find x (zip xs [0 ..n])
    where n = length xs - 1

-- Ex. 6
scalarproduct :: [Int] -> [Int] -> Int
scalarproduct xs ys = sum [x * y | (x , y) <- xs `zip` ys]

-- Ex. 7
let2int :: Char -> Int
let2int c = ord c - ord 'a'

int2let :: Int -> Char
int2let n = chr (ord 'a' + n)

shift :: Int -> Char -> Char
shift n c
    | isLower c = int2let ((let2int c + n) `mod` 26)
    | otherwise = c

encode :: Int -> String -> String
encode n xs = [shift n x | x <- xs]

-- Ex. 8
ex8 = [(x, y) | x <- [1, 2], y <- [1, 2]]

-- Ex. 9
ex9 = [x | x <- [1, 2, 3], y <- [1..x]]

-- Ex. 10
ex10 = sum [x | x <- [1 .. 10], even x]

-- Ex. 11
--xs = 1 : [x + 1 | x <- xs]

-- Ex. 12
riffle :: [a] -> [a] -> [a]
riffle xs ys = concat [ [x, y] | (x, y) <-  xs `zip` ys]

-- Ex. 13
divides :: Int -> Int -> Bool
divides x y = x `mod` y == 0
divisors x = [d | d <- [1 .. x], x `divides` d]

--
-- Recursive Functions

replicate2 0 _ = []
replicate2 n x = x : replicate2 (n -1) x

-- Ex. 4
and1 :: [Bool] -> Bool
and1 [] = True
and1 (b : bs) = b && and1 bs

and2 :: [Bool] -> Bool
and2 [] = True
and2 (b : bs)
    | b = and2 bs
    | otherwise = False

and3 (b : bs)
    | b = b
    | otherwise = and3 bs


