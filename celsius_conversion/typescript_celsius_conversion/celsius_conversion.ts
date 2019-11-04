//comment
var example_function = function (n: number) {
  return n;
};

var toCelsius = function (x: number) {
  return (5/9) * (x-32);
}

var toFahrenheit = function (x: number) {
  return  x * (9.0/5.0) + 32.0;
}

var main = function(){
  console.log("toFahrenheit(21)=<" + toFahrenheit(21.0) + ">");
  console.log("toCelsius(70)=<" + toCelsius(70.0) + ">");
};

main();
