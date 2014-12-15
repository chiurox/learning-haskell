module Week4 where

filter2 :: (a -> Bool) -> [a] -> [a]
filter2 p = foldr (\ x xs -> if p x then x : xs else xs) []

dec2int2 :: [Integer] -> Integer
dec2int2 = foldl (\ x y -> 10 * x + y) 0

--sumsqreven = compose [sum, map (^2), filter even]
compose :: [a -> a] -> (a -> a)
compose = foldr (.) id

curry2 :: ((a, b) -> c) -> a -> b -> c
curry2 f = \ x y -> f (x, y)

--uncurry2 :: (a -> b -> c) -> (a, b) -> c
--curry2 f = \ (x, y) -> f x y


all2 :: (a -> Bool) -> [a] -> Bool
--all2 p xs = and (map p xs)
--all2 p = and . map p
--all2 p = not . any (not . p)
--all2 p xs = foldl (&&) True (map p xs)
all2 p = foldr (&&) True . map p

any2 :: (a -> Bool) -> [a] -> Bool
--any2 p = or . map p
--any2 p xs = length (filter p xs ) > 0
--any2 p = not . null . dropWhile (not . p)
--any2 p xs = not (all (\ x -> not (p x)) xs)
any2 p xs = foldr (\ x acc -> (p x) || acc) False xs

takeWhile2 :: (a -> Bool) -> [a] -> [a]
takeWhile2 _ [] = []
takeWhile2 p (x : xs)
    | p x = x : takeWhile2 p xs
    | otherwise = takeWhile2 p xs

dropWhile2 :: (a -> Bool) -> [a] -> [a]
dropWhile2 _ [] = []
dropWhile2 p (x : xs)
    | p x = dropWhile2 p xs
    | otherwise = x : xs

unfold :: (b -> Bool) -> (b -> a) -> (b -> b) -> b -> [a]
unfold p h t x
    | p x = []
    | otherwise = h x : unfold p h t (t x)

type Bit = Int
int2bin :: Int -> [Bit]
--int2bin 0 = []
--int2bin n = n `mod` 2 : int2bin (n `div` 2)
int2bin = unfold (== 0) (`mod` 2) (`div` 2)

chop8 :: [Bit] -> [[Bit]]
chop8 [] = []
chop8 bits = take 8 bits : chop8 (drop 8 bits)

chop8b :: [Bit] -> [[Bit]]
chop8b = unfold null (take 8) (drop 8)

map2 :: (a -> b) -> [a] -> [b]
map2 f = unfold null (f . head) tail

iterate2 :: (a -> a) -> a -> [a]
iterate2 f = unfold (const False) id f


