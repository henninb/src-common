//comment
var factorial = function (n: number) {
  if( n == 0 ) {
    return 0;
  } else if( n == 1 ) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

var main = function(){
  for(var idx_i = 1; idx_i < 14; idx_i++) {
    console.log("factorial(" + idx_i + ")=<" + factorial(idx_i) + ">");
  }
};

main();
