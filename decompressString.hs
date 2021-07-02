import Data.Char
import Data.List.Split

decompressString :: String -> String
decompressString = concatMap decompressOne . splitByAlphabets
  where
    splitByAlphabets str = zip (extractAlphabets str) (extractAlphabetCounts str)
    extractAlphabets = map stringToChar . removeEmptyString . splitWhen isDigit
    extractAlphabetCounts = map stringToInt . removeEmptyString . splitWhen isAlpha
    stringToInt = read :: String -> Int
    stringToChar = head
    removeEmptyString = filter (/= "")
    decompressOne (alphabet, count) = replicate count alphabet
