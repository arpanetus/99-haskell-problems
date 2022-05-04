data NestedList a = Elem a | List [NestedList a]

myflatten :: NestedList a -> [a]
myflatten (Elem x)  =  [x]
myflatten (List (x:xs)) = myflatten x ++ myflatten (List xs)
myflatten (List []) = []

main = do
  print $ myflatten (Elem 1)
  print $ myflatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])

-- ok this one was a cheating :D