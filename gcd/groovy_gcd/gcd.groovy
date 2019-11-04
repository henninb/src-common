//comment

class gcd {

  static int r_gcd( int p, int q ) {
    if( q == 0 ) {
      return p;
    } else{
      return r_gcd( q, p % q ); }
  }

  static void main(String[] args) {
    if( args.length != 0 ) {
      printErr( "Usage: java -cp <jarFile> <noargs>" );
      System.exit(1);
    }

    println("gcd(45,5) = " + r_gcd(45,5));
    println("gcd(45,7) = " + r_gcd(45,7));
    println("gcd(12,144) = " + r_gcd(12,144));
  }
}
