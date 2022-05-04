mybutlast :: [x] -> Maybe x
mybutlast [] = Nothing
mybutlast [x] = Nothing
mybutlast (_:x:[]) = Just x
mybutlast (_:xs) = mybutlast xs

main = do
    print $ mybutlast [1,2,3,4]
    print $ mybutlast ['a','b','c']
    print $ mybutlast "xyz"
    print $ mybutlast [1]
    print $ mybutlast ""
    -- this one doesn't work, no idea :/
    -- print $ mylast []
