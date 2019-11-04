//comment
double toCelsius(x) {
  return (5/9) * (x-32);
}

double toFahrenheit(x) {
  return  x * (9.0/5.0) + 32.0;
}

void main() {
  print('toFahrenheit(21)=<' + toFahrenheit(21.0).toString() + '>');
  print('toCelsius(70)=<' + toCelsius(70.0).toString() + '>');
}
