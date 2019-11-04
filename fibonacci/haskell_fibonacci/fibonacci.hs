--comment

--fibonacci n = if n == 0 then 1 else (fibonacci( n - 1 ) + fibonacci( n - 2 ))

fibonacci::Int->Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci(n-1) + fibonacci(n-2)

repeatNTimes 0  = return ()
repeatNTimes idx_i  =
 do
  repeatNTimes (idx_i-1)
  --putStrLn("fibonacci(" ++ show(idx_i) ++ ")=<" ++ show(fib(idx_i)) ++ ">")
  putStrLn("fibonacci(" ++ show(idx_i) ++ ")=<" ++ show(fibonacci(idx_i)) ++ ">")

main = do
   --args <- getArgs
   repeatNTimes(24)
