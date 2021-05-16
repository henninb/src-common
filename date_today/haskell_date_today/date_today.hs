-- import Time
import Data.Time
import Data.Time.Calendar
import Data.Time.Clock
import Data.Time.LocalTime
import Data.Time.Calendar.OrdinalDate
import Data.Time.Calendar.WeekDate   (toWeekDate)
-- import Data.Time.TH (mkDay, mkUTCTime)
import qualified System.Time as SYS
--import System.Locale (defaultTimeLocale)
-- import System.Locale
import Prelude


-- data Month = January | February | March | April | May | June | July | August | September | October | November | December
-- data Day = Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday

-- localtime :: IO SYS.CalendarTime
-- localtime = SYS.getClockTime >>= SYS.toCalendarTime

startDate = fromGregorian 2021 5 12

b = addDays 1 startDate
x = diffDays b startDate

endOfMonth :: Day -> Day
endOfMonth day =
  let (y,m,_d) = toGregorian day
  in fromGregorian y m (gregorianMonthLength y m)

beginningOfCurrMonth :: Day -> Day
beginningOfCurrMonth = fromGregorian' . f. toGregorian
  where
    f (y, m, _) = (y, m, 1)

    fromGregorian' :: (Integer, Int, Int) -> Day
    fromGregorian' (y, m, d) = fromGregorian y m d

beginningOfPrev2Month :: Day -> Day
beginningOfPrev2Month = addGregorianMonthsClip (-2) . beginningOfCurrMonth

engineerNumber :: Integer
engineerNumber = 6

nextOncallDay :: Day -> Integer -> Day
nextOncallDay prev eng = addDays ((eng -1)*3) prev

-- endOfYear :: Day -> Day
-- endOfYear day =
-- 	let (y,_m,_d) = toGregorian day
-- 	in endOfMonth (fromGregorian y maxmnum 1)

previousFriday :: Day -> Day
previousFriday d
    | wd >= 6   = addDays (fromIntegral $ 5 - wd) d
    | otherwise = addDays (fromIntegral $ -2 - wd) d
  where
    (_, _, wd) = toWeekDate d

main = do
  now <- getZonedTime
  -- curr_time <- SYS.getClockTime
  let today = localDay $ zonedTimeToLocalTime now
  --curr_str <- fmap (formatTime defaultTimeLocale "%Y-%m-%d") getClockTime
  -- print curr_time
  -- tm <- localtime
  -- putStrLn $ "Today is day " ++ show (SYS.ctYDay tm) ++ " of the current year"
  print today
  print (beginningOfCurrMonth today)
  print (diffDays today startDate)
  print (nextOncallDay startDate engineerNumber)
