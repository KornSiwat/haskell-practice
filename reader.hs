import Control.Monad.Reader

hello :: Reader Int Int
hello = do
    return "hello !"

bye :: Reader String String
bye = do
    name <- ask
    return ("bye, " ++ name ++ "!")

convo :: Reader String String
convo = do
    c1 <- hello
    c2 <- bye
    return $ c1 ++ c2

main = print . runReader convo $ "adit"