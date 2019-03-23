{-# OPTIONS_GHC -fno-warn-type-defaults #-}
module Prime (nth) where

factors :: Int -> [Int]
factors n =
  [x | x <- [1..limit], n `mod` x == 0]
  where limit = floor $ sqrt $ fromIntegral n

isPrime :: Int -> Bool
isPrime n = factors n == [1]

nth :: Int -> Maybe Integer
nth n
  | n <= 0 = Nothing
  | otherwise = Just (toInteger value)
  where primes = filter isPrime [2..]
        value = primes !! (n - 1)
