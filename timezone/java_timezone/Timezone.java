import java.util.*;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;

public class Timezone {

  private static final String DATE_FORMAT = "dd-M-yyyy hh:mm:ss a";

  public static void main(String[] args) {
    if( args.length != 0 ) {
      System.err.println( "Usage: java Timezone.jar <noargs>");
      System.exit(1);
    }

    String dateInString = "22-1-2017 10:15:55 AM";
    LocalDateTime ldt = LocalDateTime.parse(dateInString, DateTimeFormatter.ofPattern(DATE_FORMAT));
    TimeZone tz = TimeZone.getDefault();
    System.out.println("TimeZone : " + tz.getID() + " - " + tz.getDisplayName());

    try {
        Date date = new Date();
        //SimpleDateFormat simpleDateFormat;
        ZonedDateTime zonedDateTime; // = ZonedDateTime.now();
        zonedDateTime = date.toInstant().atZone(ZoneId.systemDefault());
        System.out.println(zonedDateTime.format(DateTimeFormatter.ISO_OFFSET_DATE_TIME).toString());
        System.out.println(ZoneId.systemDefault().toString());
        //simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        //date = simpleDateFormat.parse(this.updatedTime);
    } catch ( Exception e ) {
        System.out.println("here");
    }

  }
}
