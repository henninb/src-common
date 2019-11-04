//comment

class date_today {
  static void date_local() {
    def local
    def year
    def month
    def day
    def hour
    def min
    def sec

    //TimeZone.setDefault(TimeZone.getTimeZone())
    local = new Date()
    //Calendar calendar = Calendar.getInstance()
    //println(c.getTimeZone())
    year = local[Calendar.YEAR]
    month = local[Calendar.MONTH] + 1
    day = local[Calendar.DATE]
    hour = local[Calendar.HOUR]
    min = local[Calendar.MINUTE]
    sec = local[Calendar.SECOND]

    println('local=' + local.format("yyyy-MM-dd-HH:mm:ss"))
    println('local=<' + year + '-' + month + '-' + day + ' ' + hour + ':' + min + ':' + sec + '>')
  }

  static void date_utc() {
    def utc
    def year
    def month
    def day
    def hour
    def min
    def sec
    def tz

    tz = Calendar.getInstance().getTimeZone()
    TimeZone.setDefault(TimeZone.getTimeZone('UTC'))
    utc = new Date()
    year = utc[Calendar.YEAR]
    month = utc[Calendar.MONTH] + 1
    day = utc[Calendar.DATE]
    hour = utc[Calendar.HOUR]
    min = utc[Calendar.MINUTE]
    sec = utc[Calendar.SECOND]

    println('utc=' + utc.format("yyyy-MM-dd-HH:mm:ss"))
    println('utc=<' + year + '-' + month + '-' + day + ' ' + hour + ':' + min + ':' + sec + '>')
    TimeZone.setDefault(tz)
  }

  static void main(String[] args) {
    if( args.length != 0 ) {
      printErr( "Usage: java -cp <jarFile> <noargs>" );
      System.exit(1);
    }
    date_utc()
    date_local()
  }
}
