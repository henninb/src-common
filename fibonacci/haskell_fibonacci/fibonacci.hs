--fibonacci n = if n == 0 then 1 else (fibonacci( n - 1 ) + fibonacci( n - 2 ))

-- :type fibonacci
fibonacci:: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci(n-1) + fibonacci(n-2)

--printFibonacciList = putStrLn . unlines . map show . map fibonacci
--printFibonacciList = putStrLn . unlines . map (show . fibonacci)

fibonacciList = unlines . map (show . fibonacci)

main :: IO()
main = putStrLn $ fibonacciList [0..25]
