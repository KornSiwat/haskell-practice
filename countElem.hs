countElem :: [a] -> String
countElem [] = "Empty"
countElem [_] = "One"
countElem [_, _] = "2"
countElem (_ : _ : xs) = "Many"