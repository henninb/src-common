import java.lang.*;

public class LeapYear {
  public static void main( String[] args ) {
    int idx_i;

    if( args.length != 0 ) {
      System.err.println( "Usage: java -jar LeapYear.jar <noargs>");
      System.exit(1);
    }

    for( idx_i = 1999; idx_i < 2101; idx_i++ ) {
      System.out.println("isLeapYear(" + idx_i + ")=<" + isLeapYear(idx_i) + ">");
    }
  }

  public static boolean isLeapYear( int year ) {
    if( year > 1581 ) {
      return(((year % 4 == 0) && (year % 100) > 0) || (year % 400 == 0));
    } else {
      return false;
    }
  }

  public static boolean islyr( int year ) {
    return((year % 400 == 0) || ((year % 100 > 0) && (year % 4 == 0)));
  }
}
