-- | Main entry point to the application.
module Main where

import           Test
import           Week2
import           Week3
import           Week4
import           Lab3
import           Parsing
import           Week6
import           Lab4
import           Data.Char

-- | The main entry point.
main :: IO ()
main = do
    putStrLn (show (double 2))
    putStrLn (show (quadruple 2))
    putStrLn (show (factorial 5))
    putStrLn (show n)
    putStrLn (show (lastd [1, 2, 3, 4]))
    putStrLn (show (last [1, 2, 3, 4]))

    putStrLn (show (init [1, 2, 3, 4]))
    putStrLn (show (init' [1, 2, 3, 4]))
    putStrLn (show (qsort [9, 5, 3, 3, 4, 1,1,1, 8]))
    putStrLn (show (qsort2 [9, 5, 5, 1, 2, 1, 1, 3, 4]))
    putStrLn (show (qsort3 [9, 5, 3, 4]))
    putStrLn (show (qsort4 [9, 5, 3, 4]))
    putStrLn "Product"
    putStrLn (show (prod [3, 4, 5]))
    putStrLn "Have a good day!"

    -- Week2 Defining Functions Homework
    putStrLn (show (halve [1,2,3,4,5,6]))
    putStrLn (show (halve2 [1,2,3,4,5,6]))
    putStrLn (show (halve3 [1,2,3,4,5,6]))
    putStrLn (show (halve4 [1,2,3,4,5,6]))
    putStrLn (show (halve5 [1,2,3,4,5,6,7,8]))

    putStrLn "Safetail"
--    putStrLn (show (safetail [9,9,1,2,3,4]))
    --putStrLn (show (True && True))
    putStrLn (show (tail [9, 9, 1, 2, 3, 4]))
    putStrLn (show (funct 3 [1, 2, 3, 4, 5, 6, 7]))
    putStrLn (show (remove 0 [1, 2, 3, 4]))

    -- Week 3
    putStrLn (show (sumSquare [1..4]))
    putStrLn (show (pyths 10))
    putStrLn (show (factors 6))
    putStrLn (show (factors 28))
    putStrLn (show (perfects 500))
    putStrLn (show (listComp))
    putStrLn (show (listComp2))
    putStrLn (show (find 2 [(2, 3)]))
    putStrLn (show (positions 4 [1, 1, 1, 1, 1, 2, 3, 4]))
    putStrLn (show (scalarproduct [1, 2, 3] [4, 5, 6]))
    putStrLn (show (encode 13 "think life a fundamentalist code like a hacker"))
    putStrLn (show (ex8))
    putStrLn (show (ex9))
    putStrLn (show (ex10))
    --putStrLn (show (xs))  --infinite list
    putStrLn (show (riffle [1, 2, 3] [4, 5, 6]))
    putStrLn (show (divides 15 2))
    putStrLn (show (divides 15 3))
    putStrLn (show (divisors 15))
    putStrLn (show (and1 [True, True, False]))
    putStrLn (show (and2 [False, True, True]))
    putStrLn (show (and3 [True, True, True, False]))

    -- Week4
    putStrLn (show (filter2 (>4) [1,2,3,4,5,6,7]))
    putStrLn (show (dec2int2 [2,3,4,5]))
    putStrLn (show (all2 even [1,2,2,2,4]))
    putStrLn (show (any2 odd [1,2,2,2,4]))
    putStrLn (show (any2 odd [2,2,2,4]))
    putStrLn (show (takeWhile2 (<4) [1,2,3,4,5]))
    putStrLn (show (dropWhile2 (<4) [1,2,3,4,5]))
    putStrLn (show (chop8 [1,2,4,90]))
    putStrLn (show (chop8b [1,2,4,90]))
    putStrLn (show (map2 (+2) [1,2,4,90]))
    putStrLn (show (take 10 $ iterate2 (2*) 1))

    -- Week4 Lab
    putStrLn (show (sum . evens $ [827305 .. 927104]))
    putStrLn (show (sum . evens $ []))
    putStrLn (show (squares 4))
    putStrLn (show (sumSquares 50))
    putStrLn (show (squares' 4 2))
    putStrLn (show (sumSquares' 50))
    putStrLn (show (sum $ squares' 10 0))
    putStrLn (show (sum $ squares' 0 10))
    putStrLn (show (coords 1 2))
    putStrLn (show (foldr (-) 0 . map (uncurry (*)) $ coords 5 7))

    -- Week5 Homework (MONADS!)
    putStrLn (show (parse item "hello"))

    -- Week6 Homework (MONADS!)
    putStr' "hello"
    putStrLn' "hi"
    putStr' "hey"
    putStr' "hey"
    putStrLn' ""

    --line <- interact' reverse
    --putStrLn (show (line))

    -- Week5 Lab4
    putStrLn (show (triangle 3))
    putStrLn (show (triangle 500))
    putStrLn (show (count "Haskell" ["Java", "PHP", "Javascript", "C#"]))
    putStrLn (show (count 1 [1,2,2,3]))
    putStrLn (show (count 722 ys))
    putStrLn (show (count 101 (poem >>= \x -> map (ord . \x -> chr (ord x + 4)) x)))
    putStrLn (show (euclid (20, 8)))
    putStrLn (show (euclid (24, 8)))
    putStrLn (show (euclid (13404, 8832)))
    putStrLn (show (euclid (1, 0)))
    putStrLn (show (funkyMap (+10) (+100) [1,2,3,4,5]))
    putStrLn (show (funkyMap2 (+10) (+100) [1,2,3,4,5]))
    putStrLn (show (sum $ funkyMap (+10) (+100) ys))
    putStrLn (show (sum $ funkyMap (\c -> if c == 'e' then 1 else 0) ord (poem >>= id)))
