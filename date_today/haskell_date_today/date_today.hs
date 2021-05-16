-- import Time
import Data.Time
import Data.Time.Calendar
import Data.Time.Clock
import Data.Time.LocalTime
import Data.Time.Calendar.OrdinalDate
import Data.Time.Calendar.WeekDate   (toWeekDate)
-- import Control.Monad.IO.Class (MonadIO, liftIO)
-- import Data.Time.TH (mkDay, mkUTCTime)
-- import qualified System.Time as SYS
--import System.Locale (defaultTimeLocale)
-- import System.Locale
import Prelude


-- data Month = January | February | March | April | May | June | July | August | September | October | November | December
-- data Day = Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday

startDate = fromGregorian 2021 4 24

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

-- nextOncallDay :: Day -> Integer -> Day
-- nextOncallDay prevDay numOfPeople = addDays dayCount prevDay
--   where
--     dayCount = numOfPeople * 3

nextOncallDayNew :: Day -> Integer -> IO Day
nextOncallDayNew prevDay numOfPeople = do
  now <- currDay
  let diff = diffDays now startDate
  let dayCountOne = numOfPeople * 3
  let interval = div diff dayCountOne
  let dayCount = (numOfPeople * 3) + (interval * dayCountOne)
  let next = addDays dayCount prevDay
  -- let x = if diffDays now next > dayCount then nextOncallDay next numOfPeople else next
  return next

currDay :: IO Day
currDay = do localDay . zonedTimeToLocalTime <$> getZonedTime

daysTo (year, month, day) = do
    now <- getZonedTime
    let (y, m, d) = toGregorian (localDay (zonedTimeToLocalTime now))
        current = fromGregorian y m d
        prior = fromGregorian year month day
    return (diffDays prior current)

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
  today <- currDay
  next <- nextOncallDayNew startDate engineerNumber
  print today
  print (diffDays next today)
  print next
