import System.IO
import System.Environment

hanoi :: (String, String) -> Int -> [(String, String)]
hanoi _ 0 = []
hanoi (from, to) n = step2 ++ step1
    where to' = unwords . filter (\n -> n /= from && n /= to) . map show $ [1..3]
          step1 = (from, to) : hanoi (from, to') (n-1)
          step2 = hanoi (to', to) (n-1)

hanoiNew :: Integer -> a -> a -> a -> [(a, a)]
hanoiNew 0 _ _ _ = []
hanoiNew n a b c = hanoiNew (n-1) a c b ++ [(a,b)] ++ hanoiNew (n-1) c b a

--must pass a value on the command line
main :: IO ()
main = do
    args <- getArgs
    mapM_ (\(a, b) -> putStrLn $ a ++ " -> " ++ b)
        . reverse . hanoi ("1", "3") . head . map (\n -> read n :: Int) $ args

--main :: IO ()
--main = let month = 1
--       in do putStrLn "Hello World"
