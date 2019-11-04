//comment
var example_function = function (n: number) {
  return n;
};

var main = function(){
  for(var idx_i = 0; idx_i < 10; idx_i++) {
    console.log("example_function(" + idx_i + ")=<" + example_function(idx_i) + ">");
  }
};

main();
