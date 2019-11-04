using System;

public class Factorial {
  public static void Main( string[] args ) {
    if( args.Length != 0 ) {
      Console.Error.WriteLine( "Usage: " + Environment.GetCommandLineArgs()[0] + " <noargs>" );
      Environment.Exit( 1 );
    }

    for( uint idx_i = 1; idx_i < 13; idx_i++ ) {
        Console.WriteLine("factorial(" + idx_i + ")=<" + factorial(idx_i) + ">");
    }
  }

  private static uint factorial( uint n ) {
    if( n == 0 ) {
      return 0;
    } else if( n == 1 ) {
      return 1;
    } else {
      return(n * factorial( n - 1 ));
    }
  }
}
