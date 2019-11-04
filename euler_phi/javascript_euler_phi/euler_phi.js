function euler_phi( n ) {
  var remainder = n;
  var phi = n;
  var odd = 0;

  if( n == 0 ) {
    return 0;
  }
  if( (remainder % 2) == 0 ) {
     phi = phi / 2;
     while( (remainder % 2) == 0 ) {
       remainder = remainder / 2;
     }
  }

  odd = 3;

  while (odd <= remainder ) {
    if (remainder % odd == 0 ) {
      phi = phi * (odd - 1) / odd;
      while( (remainder % odd) == 0 ) {
        remainder = remainder / odd;
      }
    }
    odd = odd + 2;
  }
  return phi;
}

for( idx = 1; idx < 25; idx++ ) {
  console.log("euler_phi(" + idx + ")=<" + euler_phi(idx) + ">");
}
