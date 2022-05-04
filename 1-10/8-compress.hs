compress :: Eq a => [a] -> [a]
compress list = compress list [] where
    compress [] acc = acc
    compress [x] acc = acc++[x]
    compress (x:y:xs) acc 
     | x == y = compress (y:xs) acc
     | otherwise = compress (y:xs) (acc++[x])


main = do
  print $ compress [1,1,1,2,2,2,3,3,3,4,4,4,5,5,5,6,6,6,7,7,7,8,8,8,9,9,9]