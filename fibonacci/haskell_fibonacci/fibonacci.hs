--fibonacci n = if n == 0 then 1 else (fibonacci( n - 1 ) + fibonacci( n - 2 ))

-- fibonacciOne::Int->Int
fibonacciOne 0 = 0
fibonacciOne 1 = 1
fibonacciOne n = fibonacciOne(n-1) + fibonacciOne(n-2)

--repeatNTimes 0  = return ()
--repeatNTimes idx_i  =
-- do
--  repeatNTimes (idx_i-1)
--  --putStrLn("fibonacci(" ++ show(idx_i) ++ ")=<" ++ show(fib(idx_i)) ++ ">")
--  putStrLn("fibonacci(" ++ show(idx_i) ++ ")=<" ++ show(fibonacci(idx_i)) ++ ">")

--fibonacci = map fibonacciOne
--fibonacci :: (Show a, Integral a) => [a] -> [String]
fibonacci [] = []
fibonacci (x:xs) = fibonacciOne x : fibonacci xs

-- need to fix the main
-- main :: IO()
-- main = putStrLn $ fibonacci [1..100]
-- main = map (putStrLn . show) [1,2,3,4]
-- main =  putStrLn $ show [1..100]

--main = do
--   --args <- getArgs
--   repeatNTimes(24)
