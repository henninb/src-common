public class Fibonacci {
  public static int fibonacci( int n ) {
    if( n == 0 ) {
      return 0;
    } else if( n == 1 ) {
      return 1;
    } else {
      return(fibonacci( n - 1 ) + fibonacci( n - 2 ));
    }
  }

  public static void main( String[] args ) {
    if( args.length != 0 ) {
      System.err.println( "Usage: java -jar Fibonacci.jar <noargs>");
      System.exit(1);
    }

    //System.out.println(fibonacci(new Integer(args[0])));
    for( int idx_i = 1; idx_i < 25; idx_i++ ) {
      System.out.println("fibonacci(" + idx_i + ")=<" + fibonacci(idx_i) + ">");
    }
  }
}
