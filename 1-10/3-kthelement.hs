elementAt :: [x] -> Int -> Maybe x
elementAt [] _ = Nothing
elementAt _ 0 = Nothing
elementAt (x:xs) 1 = Just x
elementAt (x:xs) n = elementAt xs (n-1)


main = do
    print $ elementAt [1,2,3,4,5] 3
    print $ elementAt "haskell" 5
    print $ elementAt [1,2,3,4,5] 0
    print $ elementAt "" 6