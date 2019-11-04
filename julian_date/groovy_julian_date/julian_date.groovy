import org.codehaus.groovy.runtime.InvokerHelper
import static java.util.Calendar.*

//comment

class Main extends Script {
    def run() {
        def timeZone = TimeZone.getTimeZone('America/Chicago')
        def date = new Date()
        //def now = Calendar.instance
        Integer year = date.year + 1900
        Integer month = date.month + 1
        Integer day = date.getAt(Calendar.DAY_OF_MONTH)
        double jd = julian_date(year, month, day)
        System.out.println(jd);
        //System.out.println("year: " + date[Calendar.YEAR]);
        //System.out.println("month: " + date[Calendar.MONTH]);
        //System.out.println("day: " + date.getAt(Calendar.DAY_OF_MONTH));
        //println 'Groovy world!'
    }

  public static double julian_date( int y, int m, int d ) {
    y += 8000;
    if( m < 3 ) {
      y--;
      m += 12;
    }
    return Math.floor((y * 365) + (y / 4) - (y / 100) + (y / 400) - 1200820 + (m * 153 + 3) / 5 - 92 + d - 1) - 0.5;
  }

   public static void main(String[] args) {
        InvokerHelper.runScript(Main, args)
    }
}
