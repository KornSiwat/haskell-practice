gradeFromScore :: Int -> Char
gradeFromScore score
  | score >= 80 = 'A'
  | score >= 70 = 'B'
  | score >= 60 = 'C'
  | score >= 50 = 'D'
  | otherwise = 'F'