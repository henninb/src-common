//comment
void date_today() {
  DateTime local = new DateTime.now();
  DateTime utc = local.toUtc();
  int year;
  int month;
  int day;
  int hour;
  int min;
  int sec;

  year = local.year;
  month = local.month;
  day = local.day;
  hour = local.hour;
  min = local.minute;
  sec = local.second;
  //print(utc.millisecondsSinceEpoch);
  //print(local.isUtc);
  print('local=<' + year.toString() + '-' + month.toString() + '-' + day.toString() + ' ' + hour.toString() + ':' + min.toString() + ':' + sec.toString() + '>');
  year = utc.year;
  month = utc.month;
  day = utc.day;
  hour = utc.hour;
  min = utc.minute;
  sec = utc.second;
  print('utc=<' + year.toString() + '-' + month.toString() + '-' + day.toString() + ' ' + hour.toString() + ':' + min.toString() + ':' + sec.toString() + '>');
}

void main() {
  date_today();
}

