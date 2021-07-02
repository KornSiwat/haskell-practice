import Data.List

compressString :: String -> String
compressString = concatMap compressOne . splitByAlphabets
  where
    splitByAlphabets = group
    compressOne str = extractAlphabet str : countAlphabets str
    extractAlphabet = head
    countAlphabets = show . length
