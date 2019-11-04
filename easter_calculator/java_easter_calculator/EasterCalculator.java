import java.lang.*;
import java.util.*;

public class EasterCalculator {
  public static void main( String[] args ) {
    if( args.length != 0 ) {
      System.err.println( "Usage: java -jar EasterCalculator.jar <noargs>");
      System.exit(1);
    }
    for(int idx_i = 2018; idx_i < 2101; idx_i ++ ) {
      System.out.println("easterCalculator=<" + easterCalculator(idx_i) + ">");
    }
  }

  public static Date easterCalculator(int year) {
    int day = 0;
    int month = 0;
    int g = 0;
    int c = 0;
    int h = 0;
    int i = 0;

    g = year % 19;
    c = year / 100;
    h = (c - (int)(c / 4) - (int)((8 * c + 13) / 25) + 19 * g + 15) % 30;
    i = h - (int)(h / 28) * (1 - (int)(h / 28) * (int)(29 / (h + 1)) * (int)((21 - g) / 11));

    day   = i - ((year + (int)(year / 4) + i + 2 - c + (int)(c / 4)) % 7) + 28;
    month = 3;

    if (day > 31) {
      month = month + 1;
      day = day - 31;
    }

   //System.out.println (year + "-" + month + "-" + day);
   return new GregorianCalendar(year, month - 1, day).getTime();
  }
}
