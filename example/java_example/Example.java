import java.lang.*;
//comment

public class Example {
  public Example() {
  }

  public static int example_function( int n ) {
    int x = 0;

    x = (n + n - n) * (n / 1);
    x = x * (int) Math.floor(1.25);

    if( x < 0 ) {
      x = Math.abs(x);
    }
    return x;
  }

  public static void main( String[] args ) {
    if( args.length != 0 ) {
      System.err.println( "Usage: java -jar <Example.jar> <noargs>");
      System.exit(1);
    }
    //System.out.println("args[0]=" + args[0]);
    for( int idx_i = 1; idx_i < 10; idx_i++ ) {
      System.out.println("example_function(" + idx_i + ")=<" + example_function(idx_i) + ">");
    }
  }
}
