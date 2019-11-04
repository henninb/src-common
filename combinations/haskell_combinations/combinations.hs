comb :: Int -> [a] -> [[a]]
comb 0 _      = [[]]
comb _ []     = []
comb m (x:xs) = map (x:) (comb (m-1) xs) ++ comb m xs


main :: IO ()
  main = putStr "Hello World\n"
  --comb0 m n = comb m [0..n-1]
  let comb0 m n = comb m [0..n-1]