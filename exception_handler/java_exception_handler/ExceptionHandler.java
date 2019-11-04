import java.lang.*;
//comment

public class ExceptionHandler {
  public ExceptionHandler() {
  }

  public static int example_function() {
    try {
      if( true ) {
        throw new Exception();
      }
    }
    catch( Exception e ) {
      System.out.println("WARN: example_function()");
      System.out.println(e);
    }
    return 0;
  }

  public static int example_function( int n ) {
    try {
      n = 1/0;
    }
    catch( ArithmeticException ae ) {
      System.out.println("WARN: ArithmeticException");
      System.out.println(ae);
    }
    catch( Exception e ) {
      System.out.println(e);
    }
    finally {
      System.out.println("finally called");
      return n;
    }
  }

  public static void main( String[] args ) {
    if( args.length != 0 ) {
      System.err.println( "Usage: java -jar ExceptionHandler.jar <noargs>");
      System.exit(1);
    }
    for( int idx_i = 0; idx_i < 10; idx_i++ ) {
      System.out.println("example_function(" + idx_i + ")=" + example_function(idx_i));
      System.out.println("example_function()=" + example_function());
    }
  }
}
