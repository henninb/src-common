using System;

public class DateUTC {
  public static void Main( string[] args ) {
    if( args.Length != 0 ) {
      Console.WriteLine( "Usage: " + Environment.GetCommandLineArgs()[0] + " <noargs>" );
      Environment.Exit(1);
    }

    date_utc();
    date_today();
  }


  public static void date_today() {
    int year = DateTime.Now.Year;
    int month = DateTime.Now.Month;
    int day = DateTime.Now.Day;
    int hour = DateTime.Now.Hour;
    int min = DateTime.Now.Minute;
    int sec = DateTime.Now.Second;

    Console.WriteLine("utc=" + DateTime.Now.ToUniversalTime().ToString("yyyy-MM-dd HH:mm"));
    Console.WriteLine("local=" + DateTime.Now.ToString("yyyy-MM-dd  HH:mm"));
    Console.WriteLine("local dow=" + DateTime.Now.DayOfWeek);

    DateTime today = new DateTime(year, month, day, hour, min, sec);
    Console.WriteLine("create date=" + today);
    Console.WriteLine("local=" + year + "-" + month + "-" + day + " " + hour + ":" + min + ":" + sec);
  }

  public static void date_utc() {
    int year = DateTime.UtcNow.Year;
    int month = DateTime.UtcNow.Month;
    int day = DateTime.UtcNow.Day;
    int hour = DateTime.UtcNow.Hour;
    int min = DateTime.UtcNow.Minute;
    int sec = DateTime.UtcNow.Second;

    Console.WriteLine("utc" + DateTime.Now.ToUniversalTime().ToString("yyyy-MM-dd HH:mm"));
    Console.WriteLine("local=" + DateTime.Now.ToString("yyyy-MM-dd  HH:mm"));
    Console.WriteLine("utc dow=" + DateTime.UtcNow.DayOfWeek);

    DateTime today = new DateTime(year, month, day, hour, min, sec);
    Console.WriteLine("create date=" + today);
    Console.WriteLine("utc=" + year + "-" + month + "-" + day + " " + hour + ":" + min + ":" + sec);
  }
}
