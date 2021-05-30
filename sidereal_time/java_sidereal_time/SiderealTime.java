import java.lang.*;
import java.util.*;
import java.text.*;

public class SiderealTime {
  public static void main( String[] args ) {
    if( args.length != 0 ) {
      System.err.println( "Usage: java -jar SiderealTime.jar <noargs>");
      System.exit(1);
    }

    GregorianCalendar calendar = new GregorianCalendar();
    calendar.setTime(new Date());
    double jd = julian_date_time(calendar.get(Calendar.DAY_OF_MONTH), calendar.get(Calendar.MONTH) + 1, calendar.get(Calendar.YEAR), getGmtTime());
    System.out.println("jd = " + jd);
    double lmst = localMeanSiderealTime( jd, -93.263 );
    System.out.println("Minneapolis (Local Mean Sidereal Time) is: ");
    PrintHoursMinutesSeconds(lmst);
    double gmst = greenwichMeanSiderealTime(jd);
    System.out.println("lmst:" + lmst);
    System.out.println("Greenwich Mean Sidereal Time is: ");
    PrintHoursMinutesSeconds(gmst);

  }

  public static double getGmtTime() {
    TimeZone utc = TimeZone.getTimeZone("Zulu");
    GregorianCalendar calendar = new GregorianCalendar(utc);

    return calendar.get(Calendar.HOUR_OF_DAY) + (calendar.get(Calendar.MINUTE)) / 60.0 + (calendar.get(Calendar.SECOND)) / 3600.0;
  }

  //Greenwich (Mean) Sidereal Time
  public static double greenwichMeanSiderealTime( double jd ) {
    double t_eph;
    double ut;
    double mjd0;
    double mjd;

    mjd = jd - 2400000.5;
    mjd0 = (double)(int)(mjd);
    System.out.println("mjd:" + mjd);
    System.out.println("mjd0:" + mjd0);
    ut = (mjd - mjd0) * 24.0;
    System.out.println("ut:" + ut);
    t_eph = (mjd0 - 51544.5) / 36525.0;
    System.out.println("t_eph:" + t_eph);
    return 6.697374558 + (1.0027379093 * ut) + ((8640184.812866 + (0.093104 - 0.0000062 * t_eph) * t_eph) * t_eph) / 3600.0;
  }

  public static double localMeanSiderealTime( double jd, double longitude ) {
    double gmst = greenwichMeanSiderealTime(jd);
    double lmst = 24.0 * frac((gmst + longitude / 15.0) / 24.0 );

    //PrintHoursMinutesSeconds( lmst );
    return lmst;
  }

  public static void PrintHoursMinutesSeconds( double time ) {
    int h = (int)time % 24;
    int min = (int)(60.0 * frac( time ));
    int secs = (int)(60.0 * (60.0 * frac( time ) - min));

    //printf( "%02d:%02d:%02d\n", h, min, secs );
    System.out.println(h + ":" + min + ":" + secs);
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
