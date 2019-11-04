using System;


public class GCDExample {
  public static void Main( string[] args ) {
    if( args.Length != 0 ) {
      Console.Error.WriteLine( "Usage: " + Environment.GetCommandLineArgs()[0] + " <noargs>" );
      Environment.Exit( 1 );
    }

    Console.WriteLine("gcd(6,4)=" + gcd(6,4));
    Console.WriteLine("gcd(45,5)=" + gcd(45,5));
    Console.WriteLine("gcd(45,7)=" + gcd(45,7));
  }

  public static int gcd( int a, int b ) {
    if( b == 0 ) {
      return a;
    } else {
      return gcd(b, (a % b));
    }
  }
}
