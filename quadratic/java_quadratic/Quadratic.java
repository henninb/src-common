import java.lang.*;

public class Quadratic {
  public static void main( String[] args ) {
    if( args.length != 0 ) {
      System.err.println( "Usage: java -jar Quadratic.jar <noargs>");
      System.exit(1);
    }

    //5,9
    quadratic(1, -14, 45);

    //-10 and -7
    quadratic(1, 17, 70);
    //System.out.println(factorial(new Integer(args[0])));
  }

  public static void quadratic( double a, double b, double c ) {
    double discriminant = ((b * b) - (4.0 * a * c));
    double root1 = 0.0;
    double root2 = 0.0;

    if( discriminant < 0.0 ) {
      //printf("No real roots\n");
      System.out.println("No real roots");
      return;
    } else {
      root1 = ((-1.0 * b) - (Math.sqrt(discriminant))) / (2.0 * a);
      root2 = ((-1.0 * b) + (Math.sqrt(discriminant))) / (2.0 * a);
    }

    //printf("roots: %.10g %.10g\n", root1, root2);
    System.out.println("Roots: " + root1 + ", "+ root2);
  }
}
