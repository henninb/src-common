using System;
using System.Net;
using System.IO;
using System.Text;

public class JulianDate {
  public static void Main( string[] args ) {
    if( args.Length != 0 ) {
      Console.Error.WriteLine( "Usage: " + Environment.GetCommandLineArgs()[0] + " <noargs>" );
      Environment.Exit( 1 );
    }

    Console.WriteLine("Local Date:" + DateTime.Now.Year + "/" + DateTime.Now.Month + "/" + DateTime.Now.Day);
    Console.WriteLine("Local Julian Date:" + julian_date(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day));
    Console.WriteLine("UTC Julian Datetime:" + julian_date_utc(DateTime.UtcNow.Year, DateTime.UtcNow.Month, DateTime.UtcNow.Day, getGmtTime()));
  }

  public static double julian_date( int y, int m, int d ) {
    y += 8000;
    if( m < 3 ) {
      y--;
      m += 12;
    }
    return (double)((y * 365) + (y / 4) - (y / 100) + (y / 400) - 1200820 + (m * 153 + 3) / 5 - 92 + d - 1) - 0.5;
  }

  public static double julian_date_utc( int y, int m, int d, double u ) {
    if( y < 1900 ) {
      y = y + 1900;
    }
    if( m < 3 ) {
      m = m + 12;
      y = y - 1;
    }

    return ((double)(int)(365.25 * (y + 4716))) + ((double)(int)(30.6001 * (m + 1))) + (double)d - 13 - 1524.5 + u / 24.0;
  }

  public static double getGmtTime() {
    DateTime nowUtc = DateTime.UtcNow;

    int hour = nowUtc.Hour;
    int min = nowUtc.Minute;
    int sec = nowUtc.Second;
    return (hour) + (min) / 60.0 + (sec) / 3600.0;
  }
}
