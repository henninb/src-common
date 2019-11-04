#comment

defmodule Factorial do
  def factorial(0), do: 1
  def factorial(n) when n > 0 do
    n * factorial(n - 1)
  end

  def iterate(n) when n < 1 do
    #IO.puts "example_function(" <> to_string(n) <> ")"
  end

  def iterate(n) do
    iterate(n - 1)
    IO.puts "factorial(" <> to_string(n) <> ")=<" <> to_string(factorial(n)) <> ">"
  end

  def main() do
    iterate(13)
  end
end

Factorial.main()
