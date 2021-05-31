import Data.Time
import Data.Time.Calendar
import Data.Time.Clock
import Data.Time.LocalTime
import Data.Time.Calendar.OrdinalDate
import Data.Time.Calendar.WeekDate   (toWeekDate)
import Data.Astro.Time.JulianDate
import Prelude

fractionalPart :: Double -> Double
fractionalPart val = if y < 0.0 then y + 1.0 else y
  where
    xInt = round val :: Int
    x = fromIntegral xInt
    y = val - x

greenwichMeanSiderealTime :: Double -> Double
greenwichMeanSiderealTime jd = 6.697374558 + 1.0027379093 * ut + (8640184.812866 + (0.093104 - 0.0000062 * t_eph) * t_eph) * t_eph / 3600.0
   where
    mjd = jd - 2400000.5
    mjdInt = truncate mjd :: Integer
    mjd0 = fromIntegral mjdInt :: Double
    ut = (mjd - mjd0) * 24.0
    t_eph = (mjd0 - 51544.5) / 36525.0

localMeanSiderealTime :: Double -> Double -> Double
localMeanSiderealTime jd longitude = lmst
  where
    gmst = greenwichMeanSiderealTime jd
    lmst = 24 * fractionalPart((gmst + longitude / 15.0) / 24.0 )

hourMinSec :: Double -> [Char]
hourMinSec time = show hour ++ ":" ++ show min ++ ":" ++ show sec
  where
   timeInt = truncate time :: Integer
   hour = timeInt `mod` 24;
   fracTime = fractionalPart time
   minDouble = 60.0 * fracTime
   min = truncate minDouble :: Integer
   minToDouble = fromIntegral min
   sec = truncate (60.0 * (60.0 * fracTime - minToDouble)) :: Integer

-- lctJD :: JulianDate
-- lctJD = lctUniversalTime lct

-- JD 2457929.895138889
-- julianDateTime d m y u = calc
--   where
--     yearTemp = if y > 1900 then y + 1900 else y
--     month = if m < 3 then m + 12 else m
--     year = if m < 3 then yearTemp - 1 else yearTemp
--       where
--         calc = ((365.25 * fromIntegral (year + 4716))) + ((double)(int)(30.6001 * (month + 1))) + fromIntegral d - 13 - 1524.5 + u / 24.0
  -- public static double julian_date_time( int d, int m, int y, double u ) {
  --   if( y < 1900 ) {
  --     y = y + 1900;
  --   }
  --   if( m < 3 ) {
  --     m = m + 12;
  --     y = y - 1;
  --   }

  --   return ((double)(int)(365.25 * (y + 4716))) + ((double)(int)(30.6001 * (m + 1))) + (double)d - 13 - 1524.5 + u / 24.0;
  -- }

main :: IO()
main = do
  print jd
  putStrLn "--- separated ---"
  print (hourMinSec gmst)
  putStrLn "--- separated ---"
  print (hourMinSec lmst)
  -- putStrLn "--- separated ---"
  -- print eph
     where
      jd = 2459365.961574
      lmst = localMeanSiderealTime jd (-93.263)
      gmst = greenwichMeanSiderealTime jd
