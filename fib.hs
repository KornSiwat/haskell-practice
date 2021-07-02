fib :: Int -> Integer
fib = (map x [0 ..] !!)
  where
    x 0 = 0
    x 1 = 1
    x n = x (n -1) + x (n -2)