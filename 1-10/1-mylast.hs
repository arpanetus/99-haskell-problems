mylast :: [x] -> x
mylast [] = error "empty list"
mylast [x] = x
mylast (_:xs) = mylast xs

main = do
    print $ mylast [1,2,3,4]
    print $ mylast ['a','b','c']
    print $ mylast "xyz"
    print $ mylast [1]
    print $ mylast ""
    -- this one doesn't work, no idea :/
    -- print $ mylast []
