main :: IO ()
main = do
  print (calculateEasterSunday 2020)
  print (calculateEasterSunday 2021)
  print (calculateEasterSunday 2022)

calculateEasterSunday :: Integer -> String
calculateEasterSunday year = show year ++ "-" ++ show month ++ "-" ++ show day
  where
    g = year `mod` 19 + 1
    s = ((year - 1600) `div` 100) - ((year - 1600) `div` 400)
    l = (((year - 1400) `div` 100) * 8) `div` 25
    pp = (30003 - 11 * g + s - l) `mod` 30
    p = if pp == 28 then (if g > 11 then 27 else 0) else if pp == 29 then 28 else pp
    d = (year + (year `div` 4) - (year `div` 100) + (year `div` 400)) `mod` 7
    x = ((70004 - d - p) `mod` 7) + 1
    month = if (p + x) < 11 then 3 else 4
    day = if (p + x) < 11 then ((p + x) + 21) else ((p + x) - 10)
