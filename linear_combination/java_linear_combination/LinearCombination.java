import java.lang.*;

public class LinearCombination {

  public static void main( String[] args ) {
    if( args.length != 0 ) {
      System.err.println( "Usage: java -jar LinearCombination.jar <noargs>");
      System.exit(1);
    }

    gcd_linear_combination(4,59);
  }

  public static void print_linear_combination( int x, int y, int f, int g, int gcd ) {
    //printf("The Linear Combination is: %d * (%d) + %d * (%d) = %d\n", x, f, y, g, gcd);
    //Console.WriteLine("The Linear Combination is: %d * (%d) + %d * (%d) = %d", x, f, y, g, gcd);
    System.out.println("The Linear Combination is: "+ x + " * (" + f + ") + " + y + " * (" + g + ") = " + gcd);
  }

  public static void gcd_linear_combination( int x, int y ) {
    int a2 = 1;
    int b3 = 1;
    int a3 = 0;
    int b2 = 0;
    int a1 = x;
    int b1 = y;

    while( true ) {
      if( a1 == b1 ) {
        print_linear_combination(x, y, b2, b3, b1);
        print_linear_combination(x, y, a2, a3, a1);
        break;
      } else if( a1 > b1 ) {
        a1 = a1 - b1;
        a2 = a2 - b2;
        a3 = a3 - b3;
      } else {
        // if( b1 > a1 )
        b1 = b1 - a1;
        b2 = b2 - a2;
        b3 = b3 - a3;
      }
    }
  }
}
