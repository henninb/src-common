import Data.Char

append_ascii_chars =
  appendFile "ascii_chars.txt"
    (show [(x,chr (x)) | x <- [0..127]])


main =
   readFile "input.txt"  >>= \ input ->
     let
       output = map toLower input
     in
       writeFile "output.txt" output


--getLine = do c <- getChar
-- if c == '\n'
--      then return ""
--      else do l <- getLine
--              return (c:l)

--File: input.txt :
--[1,2,4,6,7]
--Program source:

--main = do x <- readFile "input.txt"
--  y <- rList x
--  print (sum y)

--rList :: String -> IO [Int]
--rList = readIO
