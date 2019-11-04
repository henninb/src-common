import java.lang.*;

public class Factorial {

  public static void main( String[] args ) {
    if( args.length != 0 ) {
      System.err.println( "Usage: java -jar Factorial.jar <noargs>");
      System.exit(1);
    }

    for( int idx_i = 1; idx_i < 15; idx_i++ ) {
      System.out.println("factorial("  + idx_i + ")=<" + factorial(idx_i) + ">");
    }
  }
  // precondition: n >= 0 and n <= 20
  public static long factorial( long n ) {
    if( n < 0 ) {
      throw new RuntimeException("Underflow error in factorial");
    } else if( n > 20 ) {
      throw new RuntimeException("Overflow error in factorial");
    } else if( n == 0 ) {
      return 1;
    } else {
      return n * factorial( n - 1 );
    }
  }
}
