function gcd( p, q ) {
  if( q == 0 ) {
    return p;
  } else{
    return gcd( q, p % q );
  }
}

function main() {
  console.log("gcd(45, 5)=" + gcd(45, 5));
  console.log("gcd(47, 5)=" + gcd(47, 5));
}
main()
