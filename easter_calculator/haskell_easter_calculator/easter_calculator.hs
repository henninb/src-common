main :: IO ()
main = do
  print (calculateEasterSunday 2020)
  print (easter 2020)
  print (calculateEasterSunday 2021)
  print (easter 2021)
  print (calculateEasterSunday 2022)
  print (easter 2022)

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


easter year = show year ++ "-" ++ show month ++ "-" ++ show newday
  where
    g = year `mod` 19
    c = year `div` 100
    h = (c - (c `div` 4) - ((8 * c + 13) `div` 25) + 19 * g + 15) `mod` 30
    i = h - (h `div` 28) * (1 - (h `div` 28) * (29 `div` (h + 1)) * ((21 - g) `div` 11))
    day = i - ((year + (year `div` 4) + i + 2 - c + (c `div` 4)) `mod` 7) + 28
    month = if day > 31 then 4 else 3
    newday = if day > 31 then day-31 else day
