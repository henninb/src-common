function toCelsius(x) {
  return (5.0/9.0) * (x - 32.0);
}

function toFahrenheit(x) {
  return  x * (9.0/5.0) + 32.0;
}

function main() {
  console.log("toCelsius(" + 70 + ")=<" + toCelsius(70.0) + ">");
  console.log("toFahrenheit(" + 21 + ")=<" + toFahrenheit(21.0) + ">");
}

main()
