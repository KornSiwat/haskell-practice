plusOne :: Int -> (Int, String)
plusOne x = (x + 1, "plus one")

double :: Int -> (Int, String)
double x = (x * 2, "double")

bind :: (Int -> (Int, String)) -> ((Int, String) -> (Int, String))
bind f' (gx, gs) = let (fx, fs) = f' gx in (fx, gs ++ fs)
