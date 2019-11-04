package DateToday

import java.time.*
//import java.time.LocalDate

//comment
class DateToday {
  fun date_utc() {
    val utc: ZonedDateTime = ZonedDateTime.now(ZoneOffset.UTC)
    val year = utc.getYear()
    val month = utc.getMonthValue()
    val day = utc.getDayOfMonth()
    val hour = utc.getHour()
    val min = utc.getMinute()
    val sec = utc.getSecond()
    println("utc=<" + year + "-" + month + "-" + day + " " + hour + ":" + min + ":" + sec + ">")
  }

  fun date_today() {
    val local: LocalDateTime = LocalDateTime.now()
    val year = local.getYear()
    val month = local.getMonthValue()
    val day = local.getDayOfMonth()
    val hour = local.getHour()
    val min = local.getMinute()
    val sec = local.getSecond()
    println("local=<" + year + "-" + month + "-" + day + " " + hour + ":" + min + ":" + sec + ">")
  }
}

fun main(args : Array<String>) {
  if( args.size != 0 ) {
    println("Usage: java -jar DateToday.jar <noargs>")
    System.exit(1)
  }
  val date_today = DateToday()
  date_today.date_today()
  date_today.date_utc()
}

