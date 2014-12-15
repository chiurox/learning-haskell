module Week6 where

putStr' :: String -> IO ()
putStr' [] = return ()
putStr' (x : xs) = putChar x >> putStr' xs

putStrLn' :: String -> IO ()
putStrLn' [] = putChar '\n'
--putStrLn' xs = putStr' xs >> putStrLn' "" NO
--putStrLn' xs = putStr' xs >> putChar '\n' OK
--putStrLn' xs = putStr' xs >>= \x -> putChar '\n' OK
putStrLn' xs = putStr' xs >> putStr' "\n"
--putStrLn' xs = putStr' xs >> putStrLn' "\n" NO
--putStrLn' xs = putStrLn' xs >> putStr' "\n" NO
--putStrLn' xs = putStr' xs >> putChar' '\n' NO

getLine' :: IO String
getLine' = get []
get :: String -> IO String
get xs
  = do x <- getChar
       case x of
            '\n' -> return xs
            _ -> get (xs ++ [x])

interact' f
  = do input <- getLine'
       putStrLn' (f input)

--sequence_' [] = return ()
--sequence_' (m : ms) = m >> \ _ -> sequence_' ms
--sequence_' (m : ms) = (foldl (>>) m ms) >> return ()
--sequence_' ms = foldl (>>) (return ()) ms
sequence_' ms = foldr (>>) (return []) ms

sequence' [] = return []
sequence' (m : ms)
  = m >>=
      \ a ->
        do as <- sequence' ms
           return (a : as)

sequence2' ms = foldr func (return []) ms
  where
      func :: (Monad m) => m a -> m [a] -> m [a]
      func m acc
        = do x <- m
             xs <- acc
             return (x : xs)