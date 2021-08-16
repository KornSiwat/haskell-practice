main = do
  fileContent <- readFile "sample.txt"
  let linesOfContent = lines fileContent
  return linesOfContent

main' = readFile "sample.txt" >>= return . lines