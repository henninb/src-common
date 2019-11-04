//comment
int leap_year_function(n) {
  return n;
}

boolean isLeapYear( int year ) {
  if( year > 1581 ) {
    return(((year % 4 == 0) && (year % 100) > 0) || (year % 400 == 0));
  } else {
    return false;
  }
}

void main() {
  for (var idx_i = 2017; idx_i < 2100; idx_i++) {
    print('isLeapYear(' + idx_i.toString() + ')=<' + isLeapYear(idx_i).toString() +  '>');
  }
}
