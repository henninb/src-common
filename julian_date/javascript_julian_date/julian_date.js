function julian_date( y, m, d ) {
  y += 8000;
  if( m < 3 ) {
    y--;
    m += 12;
  }
  return Math.floor((y * 365) + (y / 4) - (y / 100) + (y / 400) - 1200820 + ((m * 153 + 3) / 5) - 92 + d - 1) - 0.5;
}

function main() {
  var utc = new Date();
  var year = utc.getUTCFullYear();
  var month = utc.getUTCMonth() + 1; //months from 1-12
  var day = utc.getUTCDate();
  var hour = utc.getUTCHours();
  var min = utc.getUTCMinutes();
  var sec = utc.getUTCSeconds();

  console.log(julian_date(year, month, day));
}
main()
