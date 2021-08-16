import Control.Monad.Trans.Writer (Writer, runWriter, tell)

plusOne :: Int -> Writer String Int
plusOne x = do
  tell $ show x ++ "plus one"
  return $ x + 1

double :: Int -> Writer String Int
double x = do
  tell $ "double" ++ show x
  return $ x * 2