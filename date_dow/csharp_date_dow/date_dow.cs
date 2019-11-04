using System;

public class date_dow {

  public static void Main( string[] args ) {
    if( args.Length != 0 ) {
      Console.Error.WriteLine( "Usage: " + Environment.GetCommandLineArgs()[0] + " <noargs>" );
      Environment.Exit(1);
    }

    Console.WriteLine("today dow=" + DateTime.Now.DayOfWeek);
    Console.WriteLine("today doy=" + day_of_year(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day));
    Console.WriteLine("1=SUN, 2=MON, 3=TUE, 4=WED, 5=THU, 6=FRI, 7=SAT");
    //Console.WriteLine(day_of_week(doy, 2010));
    //dow(2017, 09, 29);
  }

  private static int dow(int y, int m, int d) {
    //int d    = 29   ; //Day
    //int m    = 9    ; //Month
    //int y    = 2017 ; //Year
    int weekday = 0;

    if ( m < 3 )
    {
        d = d + y;
        y--;
    }
    else
    {
        d = d + y - 2;
    }

    weekday = (23 * m/9) + d + 4 + y/4 - y/100 + y/400;
    weekday = weekday % 7;
    Console.WriteLine("dow=<" + weekday + "> where 0=SUN, 1=MON, 2=TUE, 3=WED, 4=THU, 5=FRI, 6=SAT\n");
    return weekday;
  }

  private static string day_of_week( int doy, int year ) {
    int dow_int = 0;
    int jd = 0;
    string[] dow_str = {"SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"};

    jd = (int)julian_date(year, (double)(doy + 0.5)) + 2;
    dow_int = (jd - 7 * ((jd - 1) / 7));
    return dow_str[dow_int - 1];
  }

  private static double julian_date( int year, double doy ) {
    int prev_year;
    int century;
    int num_leaps;
    double jd;

    prev_year = year - 1;
    century = prev_year / 100;
    num_leaps = (int)(prev_year / 4) - century + (int)(century / 4);
    jd = 1721425.0 + 365.0 * (double)prev_year + (double)num_leaps - 0.5 + doy;
    return jd;
  }

  private static int day_of_year( int year, int month, int mday ) {
    int N1 = 275 * month / 9;
    int N2 = (month + 9) / 12;
    int N3 = (1 + ((year - 4 * (year / 4) + 2) / 3));
    int N = N1 - (N2 * N3) + mday - 30;

    return N;
  }

}
