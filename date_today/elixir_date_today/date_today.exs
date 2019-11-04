#import Ecto.DateTime.utc
#comment
#:calendar.universal_time

defmodule DateToday do
  def example_function() do
    #Ecto.Date.utc
    #Ecto.Time.utc
    #Ecto.DateTime.utc
    #DateTime.utc_now
    #local = :os.system_time(:millisecond)
    #utc = DateTime.utc_now
    utc = Ecto.DateTime.utc
    #s = "#{local.year}-#{local.month}-#{local.day}"
    1
  end
  def iterate(n) when n < 1 do
    #IO.puts "example_function(" <> to_string(n) <> ")"
  end

  def iterate(n) do
    iterate(n - 1)
    #IO.puts "example_function(" <> to_string(n) <> ")=<" <> to_string(example_function(n)) <> ">"
  end

  def main() do
    #oiterate(10)
    example_function()
  end
end

DateToday.main()
