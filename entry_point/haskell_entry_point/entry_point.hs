--main :: IO ()
--  main = do args<-getArgs
--  email (head args)
--  return ()

import Text.Printf
--import Text.Format
import Data.Char
--import Time
import Data.Time

exampleFunction n = n

main =
   let
     idx_i = 1
     y = 1
   in do
   putStrLn("exampleFunction(" ++ show(idx_i) ++ ")=" ++ show(exampleFunction(idx_i)))
   putStrLn("exampleFunction(" ++ show(idx_i) ++ ")=" ++ show(exampleFunction(idx_i)))
