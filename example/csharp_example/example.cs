using System;

public class Example {
  public static void Main( string[] args ) {
    if( args.Length != 0 ) {
      Console.Error.WriteLine("Usage: " + Environment.GetCommandLineArgs()[0] + " <noargs>");
      Environment.Exit(1);
    }

    for( int idx_i = 1; idx_i < 10; idx_i++ ) {
      Console.WriteLine("example_function(" + idx_i + ")=<" + example_function(idx_i) + ">");
    }
  }
  public static int example_function( int n ) {
    int x = 0;

    x = (n + n - n) * (n / 1);
    x = x * (int) Math.Floor(1.25);

    if( x < 0 ) {
      x = Math.Abs(x);
    }
    return x;
  }
}
