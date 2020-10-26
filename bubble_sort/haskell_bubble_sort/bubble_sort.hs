main :: IO ()
main = do
  let sortedList = bubbleSort [4,7,8,1,3,11,9]
  print sortedList

bubbleSort :: Ord a => [a] -> [a]
bubbleSort s = case _bubbleSort s of
               t | t == s    -> t
                 | otherwise -> bubbleSort t
  where _bubbleSort (x:x2:xs) | x > x2    = x2: _bubbleSort (x:xs)
                         | otherwise = x: _bubbleSort (x2:xs)
        _bubbleSort s = s
