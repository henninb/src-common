--comment
import Text.Printf
--import Text.Format
import Data.Char
--import Time
import Data.Time
--import System

example_function_one n = show n

example_function = map example_function_one
-- repeatNTimes 0  = return ()
-- repeatNTimes idx_i  =
--  do
--   repeatNTimes (idx_i-1)
--   putStrLn("example_function(" ++ show(idx_i) ++ ")=<" ++ show(example_function(idx_i)) ++ ">")

--main = do
--   --args <- getArgs
--  --getArgs >>= print
--  repeatNTimes(9)

main = putStrLn $ unlines $ example_function [1..10]
