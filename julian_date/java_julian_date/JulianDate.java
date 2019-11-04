import java.lang.*;
import java.util.*;
import java.time.*;

public class JulianDate {
  public JulianDate() {
  }

  public static void main( String[] args ) {
    if( args.length != 0 ) {
      System.err.println( "Usage: java -jar JulianDate.jar <noargs>");
      System.exit(1);
    }

    //Date today = new Date();
    ZoneId zonedId = ZoneId.of("America/Chicago");
    LocalDate local = LocalDate.now(zonedId);
    ZonedDateTime nowUtc = ZonedDateTime.now(ZoneOffset.UTC);
    System.out.println("Local Date:" + local);
    System.out.println("Local Julian Date: " + julian_date(local.getYear(), local.getMonthValue(), local.getDayOfMonth()));
    System.out.println("UTC Julian Datetime: " + julian_date_utc(nowUtc.getYear(), nowUtc.getMonthValue(), nowUtc.getDayOfMonth(), getGmtTime()));
  }

  public static double julian_date( int y, int m, int d ) {
    y += 8000;
    if( m < 3 ) {
      y--;
      m += 12;
    }
    //System.out.println("y:" + y);
    //System.out.println("m:" + m);
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
    ZonedDateTime nowUtc = ZonedDateTime.now(ZoneOffset.UTC);
    int hour = nowUtc.getHour();
    int min = nowUtc.getMinute();
    int sec = nowUtc.getSecond();
    return (hour) + (min) / 60.0 + (sec) / 3600.0;
  }
}
