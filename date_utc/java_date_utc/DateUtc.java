import java.lang.*;
import java.util.*;
import java.text.*;
import java.time.format.*;
import java.time.*;

public class DateUtc {
  public static void main( String args[] ) {
    if( args.length != 0 ) {
      System.err.println( "Usage: java -jar DateUtc.jar <noargs>");
      System.exit(1);
    }
    date_utc();
  }

  public static void date_utc() {
    int year;
    int month;
    int day;
    int hour;
    int min;
    int sec;

    LocalDateTime local = LocalDateTime.now();
    year = local.getYear();
    month = local.getMonthValue();
    day = local.getDayOfMonth();
    hour = local.getHour();
    min = local.getMinute();
    sec = local.getSecond();

    System.out.println(DateTimeFormatter.ofPattern("yyyy-MM-dd hh:mm:ss").format(local));
    System.out.println("lccal=<" + year + "-" + month + "-" + day + " " + hour + ":" + min + ":" + sec + ">");

    ZonedDateTime utc = ZonedDateTime.now(ZoneOffset.UTC);
    year = utc.getYear();
    month = utc.getMonthValue();
    day = utc.getDayOfMonth();
    hour = utc.getHour();
    min = utc.getMinute();
    sec = utc.getSecond();
    System.out.println(DateTimeFormatter.ofPattern("yyyy-MM-dd hh:mm:ss").format(utc));
    System.out.println("utc=<" + year + "-" + month + "-" + day + " " + hour + ":" + min + ":" + sec + ">");
  }
}
