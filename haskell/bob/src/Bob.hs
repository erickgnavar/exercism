module Bob (responseFor) where

import Data.Char
import Data.List

responseFor :: String -> String
responseFor xs
  | isYelling xs && isQuestion xs = "Calm down, I know what I'm doing!"
  | isQuestion cleanedText = "Sure."
  | isYelling xs = "Whoa, chill out!"
  | cleanedText == "" = "Fine. Be that way!"
  | otherwise = "Whatever."
  where cleanedText = filter (not . isSpace) xs

isQuestion :: String -> Bool
isQuestion xs = isSuffixOf "?" xs

isYelling :: String -> Bool
isYelling xs = all isUpper cleaned && length cleaned > 0
  where cleaned = filter isLetter xs
