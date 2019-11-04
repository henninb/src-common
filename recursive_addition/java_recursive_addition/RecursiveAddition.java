import java.lang.*;

public class RecursiveAddition {

  public static void main( String[] args ) {
    if( args.length != 0 ) {
      System.err.println( "Usage: java -jar RecursiveAddition.jar <noargs>");
      System.exit(1);
    }

    System.out.println("rec_add(34, 10)=" + rec_add(34, 10));
  }

  public static int rec_add( int x, int y ) {
    if( y == 0 ) {
      return x;
    } else {
      return 1 + rec_add( x, y - 1 );
    }
  }
}
