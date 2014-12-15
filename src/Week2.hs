module Week2 where
--import Prelude hiding ((&&))
-- Defining Functions Homework

-- Ex. 0
halve :: [a] -> ([a], [a])
halve xs = (take n xs, drop n xs)
    where n = length xs `div` 2
halve2 xs = splitAt (length xs `div` 2) xs
halve3 xs = (take (n `div` 2) xs, drop (n `div` 2) xs)
    where n = length xs
halve4 xs = (take n xs, drop (n + 1) xs)
    where n = length xs `div` 2
halve5 xs = splitAt (div (length xs) 2) xs

-- Ex. 1
safetail :: [a] -> [a]
safetail xs
    | null xs = []
    | otherwise = tail xs

safetail2
    = \ xs ->
        case xs of
            [] -> []
            (_ : xs) -> xs

-- Ex. 3
--a && b = if a then if b then True else False else False

-- Ex. 7
remove :: Int -> [a] -> [a]
remove n xs = take n xs ++ drop (n + 1) xs

-- Ex. 8
funct :: Int -> [a] -> [a]
funct x xs = take (x + 1) xs ++ drop x xs
