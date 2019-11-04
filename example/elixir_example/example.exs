#comment

defmodule Example do
  def example_function(n) do
    n
  end
  def iterate(n) when n < 1 do
    #IO.puts "example_function(" <> to_string(n) <> ")"
  end

  def iterate(n) do
    iterate(n - 1)
    IO.puts "example_function(" <> to_string(n) <> ")=<" <> to_string(example_function(n)) <> ">"
  end

  def main() do
    iterate(10)
  end
end

Example.main()
