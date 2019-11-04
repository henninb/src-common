//comment
var computeDateDoy = function ( year: number, month: number, mday:number ) {
  var n1 = Math.floor((275 * month) / 9);
  var n2 = Math.floor((month + 9) / 12);
  var n3 = (1 + Math.floor((year - 4 * Math.floor(year / 4) + 2) / 3));
  var n = n1 - (n2 * n3) + mday - 30;

  return n;
}

var datetimeToEpoch = function ( years: number, months: number, mday: number, hours: number, mins: number, secs: number ) {
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

var main = function(){
  var utc = new Date();
  var year = utc.getUTCFullYear();
  var month = utc.getUTCMonth() + 1; //months from 1-12
  var day = utc.getUTCDate();
  var hour = utc.getUTCHours();
  var min = utc.getUTCMinutes();
  var sec = utc.getUTCSeconds();
  var epoch = 0;

  for(var idx_i = 0; idx_i < 10; idx_i++) {
    console.log("epoch_conversion_function(" + idx_i + ")=<" + epoch_conversion_function(idx_i) + ">");
  }
  console.log(new Date().toLocaleString())
  console.log(year)
  console.log(month)
  console.log(day)
  console.log(hour)
  console.log(min)
  console.log(sec)
  epoch = datetimeToEpoch(year, month, day, hour, min, sec);
  console.log(epoch);
  console.log("doesn't work");
};

main();
