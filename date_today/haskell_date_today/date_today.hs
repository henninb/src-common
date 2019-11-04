import Time
--import Data.Time
import System.Time
--import System.Locale (defaultTimeLocale)
import System.Locale

{-
timerClock      :: ClockTime -> ClockTime
timerClock t    =  addToClockTime (TimeDiff 0 0 0 0 0 15 0) t


data CalendarTime = CalendarTime
   {ctYear :: Int,         -- Year (post-Gregorian)
    ctMonth :: Month,
    ctDay :: Int,          -- Day of the month (1 to 31)
    ctHour :: Int,         -- Hour of the day (0 to 23)
    ctMin :: Int,          -- Minutes (0 to 59)
    ctSec :: Int,          -- Seconds (0 to 61, allowing for leap seconds)
    ctPicosec :: Integer,  -- Picoseconds
    ctWDay :: Day,         -- Day of the week
    ctYDay :: Int,         -- Day of the year (0 to 364 or 365)
    ctTZName :: String,    -- Name of timezone
    ctTZ :: Int,           -- Variation from UTC in seconds
    ctIsDST :: Bool        -- True if Daylight Saving Time in effect
   }
-}
data Month = January | February | March | April | May | June | July | August | September | October | November | December
data Day = Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday

localtime = getClockTime >>= toCalendarTime

t = do
  tm <- localtime
  putStrLn $ "Today is day " ++ show (ctYDay tm) ++ " of the current year"

--t2 = do
--  tm <- getCurrentTime
--  let (year, month, day) = toGregorian (utctDay tm)
  --printf "The current date is %04d %02d %02d\n" year month day

--t3 = do
--  tm <- getCurrentTime
--  return $ "The current date is " ++ show (utctDay tm)
-- The current date is 2008-04-18

--t4 = fmap (formatTime defaultTimeLocale "%Y-%m-%d") getCurrentTime
-- => 2008-04-18

main = do
  curr_time <- getClockTime
  --curr_str <- fmap (formatTime defaultTimeLocale "%Y-%m-%d") getClockTime
  print curr_time
  tm <- localtime
  putStrLn $ "Today is day " ++ show (ctYDay tm) ++ " of the current year"
  --print fmap (formatTime defaultTimeLocale "%Y-%m-%d") getCurrentTime
