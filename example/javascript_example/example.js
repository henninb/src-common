function example_function (n) {
  x = 0;

  x = (n + n - n) * (n / 1);
  x = x * Math.floor(1.25);

  if( x < 0 ) {
    x = Math.abs(x);
  }
  return x;
}

function main() {
  for( idx = 0; idx < 10; idx++ ) {
    console.log("example_function(" + idx + ")=<" + example_function(idx) + ">");
  }
}
main()
