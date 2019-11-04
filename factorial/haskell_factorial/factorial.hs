--comment
--factorial n = if n == 0 then 1 else n * factorial (n-1)
factorial::Int->Int
factorial 0 = 0
factorial 1 = 1
factorial n = n * factorial(n-1)

repeatNTimes 0  = return ()
repeatNTimes idx_i  =
 do
  repeatNTimes (idx_i-1)
  putStrLn("factorial(" ++ show(idx_i) ++ ")=<" ++ show(factorial(idx_i)) ++ ">")

main =
  repeatNTimes(12)
