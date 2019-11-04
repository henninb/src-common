#comment

defmodule DateToday do
  def date_utc() do
    utc = DateTime.utc_now()
    year = utc.year
    month = utc.month
    day = utc.day
    hour = utc.hour
    min = utc.minute
    sec = utc.second
    IO.puts DateTime.utc_now.time_zone
    IO.puts to_string(DateTime.to_unix(DateTime.utc_now()))
    IO.puts to_string(DateTime.utc_now)
    IO.puts "utc=<" <> to_string(year) <> "-" <> to_string(month) <> "-" <> to_string(day) <> " " <> to_string(hour) <> ":" <> to_string(min) <> ":" <> to_string(sec) <> ">"
  end

  def date_today() do
    local = :calendar.local_time()
    localDate = elem(local, 0)
    localTime = elem(local, 1)
    year = elem(localDate, 0)
    month = elem(localDate, 1)
    day = elem(localDate, 2)
    hour = elem(localTime, 0)
    min = elem(localTime, 1)
    sec = elem(localTime, 2)
    IO.puts "local=<" <> to_string(year) <> "-" <> to_string(month) <> "-" <> to_string(day) <> " " <> to_string(hour) <> ":" <> to_string(min) <> ":" <> to_string(sec) <> ">"
  end

  def main() do
    date_today()
    date_utc()
  end
end

#DateToday.main()
