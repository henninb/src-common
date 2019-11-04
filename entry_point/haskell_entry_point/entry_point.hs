--main :: IO ()
--  main = do args<-getArgs
--  email (head args)
--  return ()

import Text.Printf
--import Text.Format
import Data.Char
--import Time
import Data.Time

example_function n = n

main =
   let
     idx_i = 1
     y = 1
   in do
   putStrLn("example_function(" ++ show(idx_i) ++ ")=" ++ show(example_function(idx_i)))
   putStrLn("example_function(" ++ show(idx_i) ++ ")=" ++ show(example_function(idx_i)))
