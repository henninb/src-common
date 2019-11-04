function isLeapYear( year ) {
  if( year > 1581 ) {
    return(((year % 4 == 0) && (year % 100) > 0) || (year % 400 == 0));
  } else {
    return false;
  }
}

function main() {
    for( idx_i = 1999; idx_i < 2101; idx_i++ ) {
      console.log("isLeapYear(" + idx_i + ")=<" + isLeapYear(idx_i) + ">");
    }
}
main()
