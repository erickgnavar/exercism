module PerfectNumbers (classify, Classification(..)) where

data Classification = Deficient | Perfect | Abundant deriving (Eq, Show)

classify :: Int -> Maybe Classification
classify n
  | n <= 0 = Nothing
  | sum' == n = Just Perfect 
  | sum' > n = Just Abundant 
  | sum' < n = Just Deficient 
  | otherwise = Nothing
  where sum' = sumDivisors n

sumDivisors :: Int -> Int
sumDivisors n =
  sum [x | x <- [1..(n - 1)], n `mod` x == 0]
