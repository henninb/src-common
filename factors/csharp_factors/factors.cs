using System;

public class factors {
  public static void Main( string[] args ) {
    if( args.Length != 0 ) {
      Console.Error.WriteLine( "Usage: " + Environment.GetCommandLineArgs()[0] + " <noargs>" );
      Environment.Exit( 1 );
    }

    factor(1150);
  }

  public static void factor( long n ) {
    Console.WriteLine(1);
    for( long test = n - 1; test >= Math.Sqrt(n); test-- ) {
      if( n % test == 0 ) {
        Console.WriteLine(n / test);
      }
    }
    Console.WriteLine(n);
  }
}
