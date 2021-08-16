module Hanoi where

generateHanoiSolution :: Int -> [(Int, Int)]
generateHanoiSolution n = move n 1 2 3
  where
    move 0 _ _ _ = []
    move n start temp dest = topToTemp ++ lastToDest : topToLast
      where
        topToTemp = move (n - 1) start dest temp
        lastToDest = (start, dest)
        topToLast = move (n - 1) temp start dest
