using System;

public class ExceptionHandler {
  public static void Main( string[] args ) {
    if( args.Length != 0 ) {
      Console.Error.WriteLine( "Usage: " + Environment.GetCommandLineArgs()[0] + " <noargs>" );
      Environment.Exit(1);
    }

    for( int idx_i = 0; idx_i < 10; idx_i++ ) {
      Console.WriteLine("example_function(" + idx_i + ")=" + example_function(idx_i));
      Console.WriteLine("example_function()=" + example_function());
    }
  }
  public static int example_function( int n ) {
    try {
      n = 1/(n-n);
    }
    catch( DivideByZeroException dze ) {
      Console.WriteLine(dze.Message);
    }
    catch( Exception e ) {
      Console.WriteLine(e);
      Console.WriteLine(e.Message);
    }
    finally {
      Console.WriteLine("finally");
    }
    return n;
  }

  public static int example_function() {
    try {
      if( true ) {
        throw new Exception();
      }
    }
    catch( Exception e ) {
      Console.WriteLine("WARN: example_function()");
      Console.WriteLine(e);
    }
    return 0;
  }
}
