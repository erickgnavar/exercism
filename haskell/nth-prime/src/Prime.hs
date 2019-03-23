module Prime (nth) where

factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

isPrime :: Int -> Bool
isPrime n = factors n == [1, n]

nth :: Int -> Maybe Integer
nth n
  | n <= 0 = Nothing
  | otherwise = Just (toInteger value)
  where primes = filter isPrime [2..]
        value = primes !! (n - 1)
