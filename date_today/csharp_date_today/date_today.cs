using System;

public class DateToday {
  public static void Main( string[] args ) {
    if( args.Length != 0 ) {
      Console.WriteLine( "Usage: " + Environment.GetCommandLineArgs()[0] + " <noargs>" );
      Environment.Exit(1);
    }

    DateTime dateTime;
    //12/15/2017    Direct Deposit - 11/25/2017 - 12/8/2017    Brian     $0.00     0
    dateTime = new DateTime(2018, 1, 12);
    for( int idx = 0; idx < 3; idx++ ) {
      Console.Write(dateTime.ToString("MM/dd/yyyy") + "\tDirect Deposit - " + "");
      Console.WriteLine( dateTime.AddDays(-20).ToString("MM/dd/yyyy") + " - " + dateTime.AddDays(-7).ToString("MM/dd/yyyy") + "\tBrian\t0\t-1");
      Console.Write(dateTime.ToString("MM/dd/yyyy") + "\tDirect Deposit - " + "");
      Console.WriteLine( dateTime.AddDays(-20).ToString("MM/dd/yyyy") + " - " + dateTime.AddDays(-7).ToString("MM/dd/yyyy") + "\tKari\t0\t-1");
      dateTime = dateTime.AddDays(14);
    }

    dateTime = new DateTime(2018, 1, 1);
    for( int idx = 0; idx < 12; idx++ ) {
      DateTime firstDayThisMonth = new DateTime(dateTime.Year, dateTime.Month, 1);
      DateTime firstDayNextMonth = firstDayThisMonth.AddMonths(1);
      DateTime lastDaythisMonth = firstDayNextMonth.AddDays(-1);
      if( dateTime.Month == 12 ) {
        dateTime = new DateTime(dateTime.Year + 1, 1, 1);
      } else {
        dateTime = new DateTime(dateTime.Year, dateTime.Month + 1, 1);
      }
      Console.WriteLine(lastDaythisMonth.ToString("MM/dd/yyyy") + "\tInterest\tInterest\t0\t-1" + "");
    }

    date_today();
    date_utc();
  }

  public static void date_today() {
    int year = DateTime.Now.Year;
    int month = DateTime.Now.Month;
    int day = DateTime.Now.Day;
    int hour = DateTime.Now.Hour;
    int min = DateTime.Now.Minute;
    int sec = DateTime.Now.Second;

    //Console.WriteLine("utc=" + DateTime.Now.ToUniversalTime().ToString("yyyy-MM-dd HH:mm"));
    Console.WriteLine("local=" + DateTime.Now.ToString("yyyy-MM-dd  HH:mm"));
    //Console.WriteLine("local dow=" + DateTime.Now.DayOfWeek);

    //DateTime today = new DateTime(year, month, day, hour, min, sec);
    //Console.WriteLine("create date=" + today);
    Console.WriteLine("local=<" + year + "-" + month + "-" + day + " " + hour + ":" + min + ":" + sec + ">");
  }

  public static void date_utc() {
    int year = DateTime.UtcNow.Year;
    int month = DateTime.UtcNow.Month;
    int day = DateTime.UtcNow.Day;
    int hour = DateTime.UtcNow.Hour;
    int min = DateTime.UtcNow.Minute;
    int sec = DateTime.UtcNow.Second;

    Console.WriteLine("utc" + DateTime.Now.ToUniversalTime().ToString("yyyy-MM-dd HH:mm"));
    //Console.WriteLine("local=" + DateTime.Now.ToString("yyyy-MM-dd  HH:mm"));
    //Console.WriteLine("utc dow=" + DateTime.UtcNow.DayOfWeek);

    //DateTime today = new DateTime(year, month, day, hour, min, sec);
    //Console.WriteLine("create date=" + today);
    Console.WriteLine("utc=<" + year + "-" + month + "-" + day + " " + hour + ":" + min + ":" + sec + ">");
  }
}
