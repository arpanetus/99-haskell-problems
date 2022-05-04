pack :: Eq a => [a] -> [[a]]
pack [] = []
pack list = pack' list [] where
    pack' [] acc = [acc]
    pack' [x] acc = [x:acc]
    pack' (x:y:xs) acc
      | x == y = pack' (y:xs) (x:acc)
      | otherwise = (x:acc) : pack' (y:xs) []


encode :: Eq a => [a] -> [(Int, a)]
encode list = let packed = pack list in encode' packed [] where
    encode' :: Eq a => [[a]] -> [(Int, a)] -> [(Int, a)]
    encode' [] acc = acc
    encode' (x:xs) acc =  encode' xs (acc++[(length x, head x)])

main = do
  print $ encode [1,1,1,2,2,2,3,3,3]
  print $ encode "aaaabccaadeeee"