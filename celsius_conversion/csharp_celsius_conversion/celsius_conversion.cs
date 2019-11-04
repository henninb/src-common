using System;

public class CelsiusConversion {
  public static void Main( string[] args ) {
    if( args.Length != 0 ) {
      Console.Error.WriteLine( "Usage: " + Environment.GetCommandLineArgs()[0] + " <noargs>" );
      Environment.Exit(1);
    }

    Console.WriteLine("toFahrenheit(" + 21.0 + ")=<" + toFahrenheit(21.0) + ">");
    Console.WriteLine("toCelsius(" + 70.0 + ")=<" + toCelsius(70.0) + ">");
  }

  public static double toFahrenheit ( double x ) {
    return  x * (9.0/5.0) + 32.0;
  }

  public static double toCelsius ( double x ) {
    return (x - 32.0) * (5.0/9.0);
  }
}
