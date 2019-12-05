--comment

example_function :: Int -> Int
example_function n = (n + n - n) * n

exampleList = unlines . map (show . example_function)

main :: IO()
main = putStrLn $ exampleList [1..10]
