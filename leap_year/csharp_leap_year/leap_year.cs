using System;

public class LeapYear {
  public static void Main( string[] args ) {
    int idx_i;
    if( args.Length != 0 ) {
      Console.Error.WriteLine( "Usage: " + Environment.GetCommandLineArgs()[0] + " <noargs>" );
      Environment.Exit( 1 );
    }
    for( idx_i = 1999; idx_i < 2101; idx_i++ ) {
    //Console.WriteLine("isLeapYear(2010)=" + isLeapYear(2010));
      Console.WriteLine("isLeapYear(" + idx_i + ")=<" + isLeapYear(idx_i) + ">");
    }
  }

  public static bool isLeapYear( int year ) {
    if( year > 1581 ) {
      return(((year % 4 == 0) && (year % 100) > 0) || (year % 400 == 0));
    } else {
      return false;
    }
  }

  public static bool islyr( int year ) {
    return((year % 400 == 0) || ((year % 100 > 0) && (year % 4 == 0)));
  }
}
