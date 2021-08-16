tellHead :: [Int] -> String
tellHead [] = "Empty"
tellHead (x : xs) = show x ++ " and " ++ (show . length) xs ++ " number(s)"
