//comment
def example_function( int x ) {
  return x;
}

def toCelsius(x) {
  return (5/9) * (x-32);
}

def toFahrenheit(x) {
  return  x * (9.0/5.0) + 32.0;
}

def main() {
  println('toCelsius(70)=<' + toCelsius(70.0) +  '>');
  println('toFahrenheit(21)=<' + toFahrenheit(21.0) +  '>');
}

main();
