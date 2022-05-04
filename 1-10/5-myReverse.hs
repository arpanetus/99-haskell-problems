myReverse :: [a] -> [a]
myReverse xs = myRev xs []
  where
    myRev [] acc = acc
    myRev (x:xs) acc = myRev xs (x:acc)

main = do
  print $ myReverse [1,2,3,4,5]
  print $ myReverse ['a'..'z']
  print $ myReverse ""