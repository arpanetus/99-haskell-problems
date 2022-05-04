isPalindrome :: String -> Bool
isPalindrome xs = reverse xs == xs

main = do
    print $ isPalindrome "madamimadam"
    print $ isPalindrome "madam"
    print $ isPalindrome "llama"