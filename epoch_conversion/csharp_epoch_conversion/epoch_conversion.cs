using System;

public class EpochToDateConvertMain {
  public static void Main( string[] args ) {
    if( args.Length != 0 ) {
      Console.WriteLine( "Usage: " + Environment.GetCommandLineArgs()[0] + " <noargs>" );
      Environment.Exit( 1 );
    }

    long epoch = datetimeToEpoch(DateTime.UtcNow.Year,  DateTime.UtcNow.Month, DateTime.UtcNow.Day, DateTime.UtcNow.Hour, DateTime.UtcNow.Minute, DateTime.UtcNow.Second);
    Console.WriteLine(epoch);
    //epoch = dateToEpochConvert();
    //Console.WriteLine(epoch);
/*
    Console.WriteLine("1093128564");
    Console.WriteLine(epochToDateConvert("1093128564"));
    Console.WriteLine( epochToDateConvert( 1093128564 ) );

    Console.WriteLine(DateTime.Now.ToString());
    Console.WriteLine(dateToEpochConvert(DateTime.Now.ToString()));

    Console.WriteLine( "1093128564=" + dateToEpochConvert( new DateTime( 2004, 8, 21, 22, 49, 24 ) ) );
    Console.WriteLine("1093057284");
    Console.WriteLine(epochToDateConvert("1093057284"));


    Console.WriteLine(epochToDateConvert("1234567890"));
    Console.WriteLine("Local time and date: Fri Feb 13 17:31:30 2009");
    Console.WriteLine("GMT time and date: Fri Feb 13 23:31:30 2009");
*/
  }

public static void epochToDatetime( long epoch ) {
  //printf("INFO: epoch=<%ld>\n", epoch);
  //printf("INFO: utc=<%s>\n", strtok(asctime(gmtime((time_t *) &epoch)), "\n"));
  //printf("INFO: localtime=<%s>\n", strtok(asctime(localtime((time_t *) &epoch)), "\n"));
}

public static int computeDateDoy( int year, int month, int mday ) {
  int n1 = 275 * month / 9;
  int n2 = (month + 9) / 12;
  int n3 = (1 + ((year - 4 * (year / 4) + 2) / 3));
  int n = n1 - (n2 * n3) + mday - 30;

  return n;
}

public static long datetimeToEpoch( int years, int months, int mday, int hours, int mins, int secs ) {
  int epoch_start = 1970;
  int total_days = 0;
  int total_secs = 0;

  while( epoch_start < years ) {
    total_days = total_days + computeDateDoy(epoch_start, 12, 31);
    epoch_start = epoch_start + 1;
  }
  total_days = total_days + computeDateDoy(years, months, mday - 1);
  total_secs = (total_days * 86400) + (hours * 60 * 60) + (mins * 60) + secs;
  return total_secs;
}
  public static DateTime epochToDateConvert( int epoch_int ) {
    return epochToDateConvert( epoch_int.ToString());
  }

  /* consider tranlating to utc */
  public static DateTime epochToDateConvert( string epoch_string ) {
    DateTime epoch1970;
    DateTime epoch_now;
    //TimeSpan tz_span;
    int epoch_int = 0;

    epoch_now = new DateTime( 1970, 1, 1, 0, 0, 0 );

    try {
      //tz_span = DateTime.Now.ToUniversalTime().Subtract( DateTime.Now );
      epoch1970 = new DateTime( 1970, 1, 1, 0, 0, 0 );
      epoch_int = Convert.ToInt32( epoch_string );
      epoch_now = epoch1970.AddSeconds( epoch_int );
      //Console.WriteLine("time: " + epoch_now);
      //Console.WriteLine("UTC: " + localtime.Add(tz_span));
    }
    catch( Exception e ) {
      Console.WriteLine( "ABORT: " + e.Message );
    }
    return epoch_now;
  }


  public static long dateToEpochConvert() {
    long epoch_int = 0;
    DateTime epoch1970;
    TimeSpan time_span;
    DateTime date;
    //TimeSpan timeSpan;

    try {
      //tz_span = DateTime.Now.ToUniversalTime().Subtract(DateTime.Now);
      //Console.WriteLine(tz_span.ToString());

      //date = DateTime.Parse( date_string );
      date = DateTime.UtcNow;
      //date = date.Add(tz_span);
      //Console.WriteLine(date);
      epoch1970 = new DateTime( 1970, 1, 1, 0, 0, 0 );
      time_span = date.Subtract(epoch1970);
      epoch_int = time_span.Days * 3600 * 24;
      epoch_int += time_span.Hours * 360;
      epoch_int += time_span.Minutes * 60;
      epoch_int += time_span.Seconds;
    }
    catch( Exception e ) {
      Console.WriteLine( "ABORT: " + e.Message );
    }
    //Console.WriteLine("epoch: " + epoch_int);
    return epoch_int;
    //Console.WriteLine("UTC epoch: " + epoch_int);
  }
}
