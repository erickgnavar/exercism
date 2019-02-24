module Pangram (isPangram) where

import Data.Char (toLower, isLetter)

isPangram :: String -> Bool
isPangram text =
  all id values
  where cleanText = map toLower $ filter isLetter text
        values = map (`elem` cleanText) ['a'..'z']
