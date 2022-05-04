myLength :: [a] -> Int
myLength list = myLen list 0 where
    myLen :: [a] -> Int -> Int
    myLen [] acc = acc
    myLen (x:xs) acc = myLen xs (acc + 1)


main = do
    print $ myLength [1,2,3,4,5]
    print $ myLength "hello, world!"
    print $ myLength ""