--comment

exampleFunction :: Int -> Int
exampleFunction n = (n + n - n) * n

exampleList = unlines . map (show . exampleFunction)

main :: IO()
main = putStrLn $ exampleList [1..10]
