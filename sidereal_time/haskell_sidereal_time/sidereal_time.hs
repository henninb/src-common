import Data.Time
import Data.Time.Calendar
import Data.Time.Clock
import Data.Time.LocalTime
import Data.Time.Calendar.OrdinalDate
import Data.Time.Calendar.WeekDate   (toWeekDate)
import Prelude

fractionalPart :: Fractional -> Fractional
fractionalPart val = y
  where
    xInt = round val :: Int
    x = fromIntegral xInt
    y = if x < 0.0 then x + 1.0 else x

greenwichMeanSiderealTime :: Fractional -> Fractional
greenwichMeanSiderealTime jd = 6.697374558 + (1.0027379093 * ut) + ((8640184.812866 + (0.093104 - 0.0000062 * t_eph) * t_eph) * t_eph) / 3600.0
   where
    mjd = jd - 2400000.5
    mjdInt = truncate mjd :: Integer
    mjd0 = fromIntegral mjdInt :: Fractional
    ut = (mjd - mjd0) * 24.0
    t_eph = (mjd0 - 51544.5) / 36525.0

localMeanSiderealTime :: Fractional -> Fractional -> Fractional
localMeanSiderealTime jd longitude = lmst
  where
    gmst = greenwichMeanSiderealTime jd
    lmst = 24 * fractionalPart((gmst + longitude / 15.0) / 24.0 )

julianDateTime d m y u = year
  where
    year = if y > 1900 then y + 1900 else y
    month = if m < 3 then m + 12 else m
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
main = print gmst
  where
    lmst = localMeanSiderealTime 2459365.172048611 (-93.263)
    gmst = greenwichMeanSiderealTime 2459365.172048611
