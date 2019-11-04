#comment

defmodule Fibonacci do
  def fibonacci(0) do 0 end
  def fibonacci(1) do 1 end
  def fibonacci(n) do fibonacci(n-1) + fibonacci(n-2) end

  def iterate(n) when n < 1 do
    #IO.puts "example_function(" <> to_string(n) <> ")"
  end

  def iterate(n) do
    iterate(n - 1)
    IO.puts "fibonacci(" <> to_string(n) <> ")=<" <> to_string(fibonacci(n)) <> ">"
  end

  def main() do
    iterate(24)
  end
end

Fibonacci.main()
