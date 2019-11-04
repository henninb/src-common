import java.lang.*;
import java.util.*;
import java.text.*;

public class EpochConversion {
  public static void  main( String args[] ) {

    if( args.length != 0 ) {
      System.err.println("Usage: java -jar EpochConversion.jar <noargs>");
      System.exit(1);
    }

    epochToDatetime("1234567890");
    System.out.println("epoch: " + datetimeToEpoch(2009, 2, 13, 23, 31, 30));
    epoch_printer(1234567890);
  }

  public static void epochToDatetime( String epoch_str ) {
    long epoch;
    String local_datetime;
    String utc_datetime;
    SimpleDateFormat dateFormat;

    if( epoch_str == null ) {
      epoch = System.currentTimeMillis() / 1000;
    } else {
      epoch = new Long(epoch_str);
    }

    dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    local_datetime = dateFormat.format(new Date(epoch*1000));
    dateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
    utc_datetime = dateFormat.format(new Date(epoch*1000));
    System.out.println("GMT local_datetime: " + utc_datetime);
    System.out.println("Local local_datetime: " + local_datetime);
  }

  public static int compute_date_doy( int year, int month, int mday ) {
    int n1 = (275 * month / 9);
    int n2 = ((month + 9) / 12);
    int n3 = (1 + ((year - 4 * (year / 4) + 2) / 3));
    int n = n1 - (n2 * n3) + mday - 30;

    return n;
  }

  public static void epoch_printer( long epoch ) {
    String local_datetime;
    String utc_datetime;
    SimpleDateFormat dateFormat;

    dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    local_datetime = dateFormat.format(new Date(epoch*1000));
    dateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
    utc_datetime = dateFormat.format(new Date(epoch*1000));
    System.out.println("GMT local_datetime: " + utc_datetime);
    System.out.println("Local local_datetime: " + local_datetime);
  }

  public static long datetimeToEpoch( int y, int m, int mday, int h, int min, int s ) {
    int idx = 1970;
    int total_days = 0;
    int total_secs = 0;

    while( idx++ < y ) {
      total_days += compute_date_doy(idx, 12, 31);
    }
    total_days += compute_date_doy(y, m, mday - 1);
    total_secs = (total_days * 86400) + (h * 60 * 60) + (min * 60) + s;
    return total_secs;
  }
}
