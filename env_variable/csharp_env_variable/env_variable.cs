using System;

public class Example {
  public static void Main( string[] args ) {
    if( args.Length != 0 ) {
      Console.Error.WriteLine( "Usage: " + Environment.GetCommandLineArgs()[0] + " <noargs>" );
      Environment.Exit(1);
    }
    Console.WriteLine("OS=<" + Environment.GetEnvironmentVariable("OS") + ">");
    //Console.WriteLine("OS=<" + System.GetEnvironmentVariable("OS") + ">");
  }
  public static int env_variable_function( int n ) {
    int x = 0;

    x = (n + n - n) * (n / 1);
    x = x * (int) Math.Floor(1.25);

    if( x < 0 ) {
      x = Math.Abs(x);
    }
    return x;
  }
}
