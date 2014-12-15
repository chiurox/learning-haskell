module Test where

double x = x + x

quadruple x = double $ double $ x

factorial n = product [1..n]

n = a `div` length xs
   where a = 10
         xs = [1, 2, 3, 4, 5]

--lastd xs = drop (length xs - 1) xs -- returns [last item]
--lastd xs = head (drop (length xs - 1) xs) -- ok
--lastd xs = xs !! (length xs - 1) -- ok
--lastd xs = head (drop (length xs) xs)  -- The code threw an exception : ErrorCall: Prelude.head: empty list
lastd xs = head (reverse xs) -- ok
-- lastd xs = reverse xs !! (length xs - 1) -- nope

--init' xs= tail (reverse xs)
--init' xs = reverse (head (reverse xs))
--init' xs = reverse (tail xs)
--init' xs = take (length xs) xs
init' xs = reverse (tail (reverse xs)) --ok
--init' xs = take (length xs - 1) (tail xs)
--init' xs = drop (length xs - 1) xs

-- How should the definition of the function qsort be modified so that it produces
-- a reverse sorted version of a list

-- original:
qsort [] = []
qsort (x : xs) = qsort smaller ++ [x] ++ qsort larger
    where smaller = [a | a <- xs, a < x]
          larger = [b | b <- xs, b > x]

-- mine works:
qsort2 [] = []
qsort2 (x : xs) = qsort2 smaller ++ [x] ++ qsort2 larger
    where smaller = [a | a <- xs, a > x]
          larger = [b | b <- xs, b <= x]

-- works:
qsort3 [] = []
qsort3 (x : xs) = qsort3 larger ++ [x] ++ qsort3 smaller
    where smaller = [a | a <- xs, a < x]
          larger = [b | b <- xs, b > x]

-- works:
qsort4 [] = []
qsort4 (x : xs)
    = reverse
        (reverse (qsort4 smaller) ++ [x] ++ reverse (qsort4 larger))
    where smaller = [a | a <- xs, a <= x]
          larger = [b | b <- xs, b > x]

prod [] = 1
prod (x : xs) = x * prod xs


