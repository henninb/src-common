using System;

public class SiderealTime {
  public static void Main( string[] args ) {
    if( args.Length != 0 ) {
      Console.Error.WriteLine( "Usage: " + Environment.GetCommandLineArgs()[0] + " <noargs>" );
      Environment.Exit( 1 );
    }

    DateTime now = DateTime.Now;

    double jd = julian_date_time( DateTime.Now.Day, DateTime.Now.Month, DateTime.Now.Year, getGmtTime());
    Console.WriteLine("jd = " + jd);
    double LMST = LM_sidereal_time( jd, -93.263 );
    Console.WriteLine("Minneapolis (Local Mean Sidereal Time) is: ");
    PrintHoursMinutesSeconds(LMST);
    double GMST = GM_sidereal_time(jd);
    Console.WriteLine("Greenwich Mean Sidereal Time is: ");
    PrintHoursMinutesSeconds(GMST);
  }

  public static double getGmtTime() {
    //DateTime uct1 = DateTime.UtcNow;
    DateTime uct = DateTime.Now.ToUniversalTime();

    return uct.Hour + (uct.Minute) / 60.0 + (uct.Second) / 3600.0;
  }

  //Greenwich (Mean) Sidereal Time
  public static double GM_sidereal_time( double jd ) {
    double t_eph;
    double ut;
    double MJD0;
    double MJD;

    MJD = jd - 2400000.5;
    MJD0 = (double)(int)(MJD);
    ut = (MJD - MJD0) * 24.0;
    t_eph = (MJD0 - 51544.5) / 36525.0;
    return 6.697374558 + 1.0027379093 * ut + (8640184.812866 + (0.093104 - 0.0000062 * t_eph) * t_eph) * t_eph / 3600.0;
  }

  public static double LM_sidereal_time( double jd, double longitude ) {
    double GMST = GM_sidereal_time( jd );
    double LMST = 24.0 * frac((GMST + longitude / 15.0) / 24.0 );

    //PrintHoursMinutesSeconds( LMST );
    return LMST;
  }

  public static void PrintHoursMinutesSeconds( double time ) {
    int h = (int)time % 24;
    int min = (int)(60.0 * frac( time ));
    int secs = (int)(60.0 * (60.0 * frac( time ) - min));

    //printf( "%02d:%02d:%02d\n", h, min, secs );
    Console.WriteLine(h + ":" + min + ":" + secs);
  }

  public static double frac( double X ) {
    X = X - (double)(int)(X);
    if( X < 0 ) {
      X = X + 1.0;
    }
    return X;
  }

  public static double julian_date_time( int d, int m, int y, double u ) {
    if( y < 1900 ) {
      y = y + 1900;
    }
    if( m < 3 ) {
      m = m + 12;
      y = y - 1;
    }

    return ((double)(int)(365.25 * (y + 4716))) + ((double)(int)(30.6001 * (m + 1))) + (double)d - 13 - 1524.5 + u / 24.0;
  }
}

