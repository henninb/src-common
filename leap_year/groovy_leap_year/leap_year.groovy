//comment

class leap_year {

  static boolean isLeapYear( int year ) {
    if( year > 1581 ) {
      return(((year % 4 == 0) && (year % 100) > 0) || (year % 400 == 0));
    } else {
      return false;
    }
  }

  static boolean islyr( int year ) {
    return((year % 400 == 0) || ((year % 100 > 0) && (year % 4 == 0)));
  }

  static void main(String[] args) {
    for( int idx_i = 1999; idx_i < 2101; idx_i++ ) {
      println("isLeapYear(" + idx_i + ")=<" + isLeapYear(idx_i) + ">");
    }
  }
}
