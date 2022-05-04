pack :: Eq a => [a] -> [[a]]
pack [] = []
pack list = pack' list [] where
    pack' [] acc = [acc]
    pack' [x] acc = [x:acc]
    pack' (x:y:xs) acc
      | x == y = pack' (y:xs) (x:acc)
      | otherwise = (x:acc) : pack' (y:xs) []


main = do
  print $ pack [1,1,1,2,2,2,3,3,3]