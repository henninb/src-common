package DateUtc

import java.text.SimpleDateFormat
import java.util.*

class DateUtc {
  fun date_utc_function(n : Int) : Int {
    return n
  }


  fun String.toDate(dateFormat: String = "yyyy-MM-dd HH:mm:ss", timeZone: TimeZone = TimeZone.getTimeZone("UTC")): Date {
val parser = SimpleDateFormat(dateFormat, Locale.getDefault())
parser.timeZone = timeZone
return parser.parse(this)
}

  fun Date.formatTo(dateFormat: String, timeZone: TimeZone = TimeZone.getDefault()): String {
    val formatter = SimpleDateFormat(dateFormat, Locale.getDefault())
    formatter.timeZone = timeZone
    return formatter.format(this)
  }
}



fun main(args : Array<String>) {
  if( args.size != 0 ) {
    println("Usage: java -jar DateUtc.jar <noargs>")
    System.exit(1)
  }
  val date_utc = DateUtc()
  for (idx_i in 1..9) {
    println("date_utc_function(" + idx_i + ")=<" + date_utc.date_utc_function(idx_i) + ">")
  }
}

