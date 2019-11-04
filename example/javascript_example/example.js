function example_function (n) {
  return n;
}

function main() {
  for( idx = 0; idx < 10; idx++ ) {
    console.log("example_function(" + idx + ")=<" + example_function(idx) + ">");
  }
}
main()
