//comment
int gcd_function(n) {
  return n;
}

int gcd( p, q ) {
  if( q == 0 ) {
    return p;
  } else{
    return gcd( q, p % q );
  }
}

void main() {
  print('gcd(45,5)=<' + gcd(45,5).toString() + '>');
}
