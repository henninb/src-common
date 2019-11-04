-- comments
function example_function (n)
  return n;
end

function toFahrenheit ( x )
  return  x * (9.0/5.0) + 32.0
end

function toCelsius ( x )
  return (x - 32.0) * (5.0/9.0)
end

function main()
  --for idx_i=1,14,1
  --do
  print("toFahrenheit(" .. 21 .. ")=<" .. tostring(toFahrenheit(21)) .. ">")
  print("toCelsius(" .. 70 .. ")=<" .. tostring(toCelsius(70)) .. ">")
  --end
end

main()
