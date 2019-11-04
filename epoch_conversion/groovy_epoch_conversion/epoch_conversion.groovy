//comment

class epoch_conversion {
  static int epoch_conversion_function(int x) {
    return x;
  }


  static int compute_date_doy( int year, int month, int mday ) {
    int n1 = Math.floor((275 * month) / 9);
    int n2 = Math.floor((month + 9) / 12);
    int n3 = (1 + ((year - 4 * Math.floor(year / 4) + 2) / 3));
    int n = n1 - (n2 * n3) + mday - 30;
    //println(n);

    return n;
  }

  static long datetimeToEpoch( int y, int m, int mday, int h, int min, int s ) {
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

  static void main(String[] args) {
    def utc
    def year
    def month
    def day
    def hour
    def min
    def sec

    TimeZone.setDefault(TimeZone.getTimeZone('UTC'))
    utc = new Date()
    year = utc[Calendar.YEAR]
    month = utc[Calendar.MONTH] + 1
    day = utc[Calendar.DATE]
    hour = utc[Calendar.HOUR]
    min = utc[Calendar.MINUTE]
    sec = utc[Calendar.SECOND]

    println(datetimeToEpoch(year, month, day, hour, min, sec))

    for (int idx_i = 0; idx_i < 10; idx_i++) {
    }
  }
}
