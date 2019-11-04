--comment
import Text.Printf
--import Text.Format
import Data.Char
--import Time
import Data.Time
--import System

example_function n = n

repeatNTimes 0  = return ()
repeatNTimes idx_i  =
 do
  repeatNTimes (idx_i-1)
  putStrLn("example_function(" ++ show(idx_i) ++ ")=<" ++ show(example_function(idx_i)) ++ ">")

main = do
   --args <- getArgs
  --getArgs >>= print
  repeatNTimes(9)
