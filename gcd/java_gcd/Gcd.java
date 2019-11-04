public class Gcd {
  // recursive implementation
  public static int gcd( int p, int q ) {
    if( q == 0 ) {
      return p;
    } else {
      return gcd( q, p % q );
    }
  }

  // non-recursive implementation
  public static int gcd2( int p, int q ) {
    while( q != 0 ) {
      int temp = q;
      q = p % q;
      p = temp;
    }
    return p;
  }

  public static void main( String[] args ) {
    //int p = Integer.parseInt( args[0] );
    //int q = Integer.parseInt( args[1] );
    //int d = gcd( p, q );
    //int d2 = gcd2( p, q );

    if( args.length != 0 ) {
      System.err.println( "Usage: java -jar Gcd.jar <noargs>");
      System.exit(1);
    }

    System.out.println("gcd(45,5) = " + gcd(45,5));
    System.out.println("gcd(45,7) = " + gcd(45,7));
    System.out.println("gcd(12,144) = " + gcd(12,144));
  }
}
