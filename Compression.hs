module Compression
  ( compressString,
    decompressString,
  )
where

import Data.Char (isAlpha, isDigit)
import Data.List (group)
import Data.List.Split (splitWhen)

compressString :: String -> String
compressString = concatMap compressOne . splitByAlphabets
  where
    splitByAlphabets = group
    compressOne str = extractAlphabet str : countAlphabets str
    extractAlphabet = head
    countAlphabets = show . length

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
