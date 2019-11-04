//comment

public class Hanoi {
  public static void main( String[] args ) {
    if( args.length != 1 ) {
      System.err.println( "Usage: java -jar Hanoi.jar <number>" );
      System.exit(1);
    }

    int N = Integer.parseInt( args[0] );
    moves( N, true );
  }

// print out instructions for moving n discs to
// the left (if left is true) or right (if left is false)
  public static void moves( int n, boolean left ) {
  if( n == 0 ) {
    return;
  }
  moves( n - 1, !left );
  if( left ) {
    System.out.println( n + " left" );
  } else {
   System.out.println( n + " right" );
  }
  moves( n - 1, !left );
  }
}
