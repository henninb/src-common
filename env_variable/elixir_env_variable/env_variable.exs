#comment

defmodule Example do
  def env_variable_function(n) do
    n
  end
  def iterate(n) when n < 1 do
    #IO.puts "env_variable_function(" <> to_string(n) <> ")"
  end

  def iterate(n) do
    iterate(n - 1)
    IO.puts System.get_env("OS")
  end

  def main() do
    iterate(10)
  end
end

Example.main()
