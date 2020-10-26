myGcd :: (Integral a) => a -> a -> a
myGcd x y = gcd_ (abs x) (abs y)
  where
    gcd_ a 0 = a
    gcd_ a b = gcd_ b (a `rem` b)

isCoprime :: Int -> Int -> Bool
isCoprime x y = myGcd x y == 1

eulerPhi :: Int -> Int
eulerPhi n = _eulerPhi n n
  where
  _eulerPhi 0 _ = 0
  _eulerPhi n x = if isCoprime n x then 1 + _eulerPhi (n-1) x else 0 + _eulerPhi (n-1) x

eulerPhiList :: [Int] -> String
eulerPhiList = unlines . map (show . eulerPhi)

main :: IO ()
main = do
  -- let result = eulerPhi 5
  putStrLn $ eulerPhiList [1..24]
  -- print result
  putStrLn "done"
