using System;

public class Fibonacci {
  public static void Main( string[] args ) {
    if( args.Length != 0 ) {
      Console.Error.WriteLine( "Usage: " + Environment.GetCommandLineArgs()[0] + " <noargs>" );
      Environment.Exit(1);
    }

    for( int idx_i = 1; idx_i < 25; idx_i++ ) {
      Console.WriteLine("fibonacci(" + idx_i + ")=<" + fibonacci(idx_i) + ">");
    }
  }

  private static int fibonacci( int n ) {
    if( n == 0 ) {
      return 0;
    } else if( n == 1 ) {
      return 1;
    } else {
      return(fibonacci( n - 1 ) + fibonacci( n - 2 ));
    }
  }
}
