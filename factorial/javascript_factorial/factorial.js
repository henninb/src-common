factorial = function( n ) {
  if( n == 0 ) {
    return 0;
  } else if( n == 1 ) {
    return 1;
  } else {
    return (n * factorial(n - 1));
  }
}

//document.write("factorial(5)=" + factorial(5));
for( var idx_i = 1; idx_i < 15; idx_i++ ) {
  console.log("factorial(" +idx_i + ")=" + factorial(idx_i));
}
