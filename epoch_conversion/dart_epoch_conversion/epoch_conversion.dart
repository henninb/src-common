//comment

int computeDateDoy ( year, month, mday ) {
  var n1 = ((275 * month) / 9).floor();
  var n2 = ((month + 9) / 12).floor();
  var n3 = (1 + ((year - 4 * (year / 4).floor() + 2) / 3).floor());
  var n = n1 - (n2 * n3) + mday - 30;

  return n;
}

int datetimeToEpoch ( years, months, mday, hours, mins, secs ) {
  var epoch_start = 1970;
  var total_days = 0;
  var total_secs = 0;

  while( epoch_start < years ) {
    total_days = total_days + computeDateDoy(epoch_start, 12, 31);
    epoch_start = epoch_start + 1;
  }
  total_days = total_days + computeDateDoy(years, months, mday - 1);
  total_secs = (total_days * 86400) + (hours * 60 * 60) + (mins * 60) + secs;
  return total_secs;
}


void main() {
  DateTime local = new DateTime.now();
  DateTime utc = local.toUtc();
  int year;
  int month;
  int day;
  int hour;
  int min;
  int sec;
  year = utc.year;
  month = utc.month;
  day = utc.day;
  hour = utc.hour;
  min = utc.minute;
  sec = utc.second;

  print(datetimeToEpoch(year,month,day,hour,min,sec));
}
