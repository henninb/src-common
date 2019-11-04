fibonacci = function( n ) {
  if( n == 0 ) {
    return 0;
  } else if( n == 1 ) {
    return 1;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}

//document.write('fibonacci(5)=');
//document.write(fibonacci(5));
for (idx_i = 1; idx_i < 25; idx_i++) {
  console.log("fibonacci(" + idx_i + ")=<" + fibonacci(idx_i) + ">");
}
