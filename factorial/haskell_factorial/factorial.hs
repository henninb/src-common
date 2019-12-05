--comment
--factorial n = if n == 0 then 1 else n * factorial (n-1)
factorial:: Int -> Int
factorial 0 = 0
factorial 1 = 1
factorial n = n * factorial(n-1)

factorialList :: [Int] -> String
factorialList = unlines . map (show . factorial)

main :: IO()
main = putStrLn $ factorialList [0..20]
