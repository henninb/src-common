using System;

public class DegreesToRadians {
  public static void Main( string[] args ) {

    if( args.Length != 0 ) {
      Console.Error.WriteLine( "Usage: " + Environment.GetCommandLineArgs()[0] + " <noargs>" );
      Environment.Exit( 1 );
    }

    Console.WriteLine("=============");
    degrees2radians(44, 53, 0);
    Console.WriteLine("=============");
    degrees2radians(93, 13, 0);
    Console.WriteLine("=============");
    radians2degrees(1.626938);
    Console.WriteLine("=============");
  }

  private static double degrees2radians( int hours, int minutes, int seconds ) {
    double degrees;
    double radians;

    degrees = (double)(hours) + (1.0/60.0) * (double)(minutes) + (1.0/3600.0) * (double)(seconds);
    radians = (degrees)*(Math.PI/180);
    Console.WriteLine("radians: " + radians);
    Console.WriteLine("degrees: " + degrees);
    return degrees;
  }

  private static double radians2degrees( double radians ) {
    double degrees;
    int hh;
    int mm;
    int ss;

    degrees = (180/Math.PI) * radians;
    hh = (int)degrees;
    mm = (int)((degrees - (int)(degrees)) * 60);
    ss = (int)((degrees - (int)(degrees))*60 - mm) * 60;

    Console.WriteLine(hh + ":" +  mm + ":" +  ss);
    Console.WriteLine("radians: " + radians);
    Console.WriteLine("degrees: " + degrees);
    return degrees;
  }

}
