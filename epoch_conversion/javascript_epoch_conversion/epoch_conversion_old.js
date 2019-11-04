var utcSeconds = 1234567890;

var d = new Date(0); // The 0 there is the key, which sets the date to the epoch
console.info(d.setUTCSeconds(utcSeconds));


var test_date = new Date(1394104654000)
//> Thu Mar 06 2014 06:17:34 GMT-0500 EST

console.info(test_date);

//moment.utc(1234567890000).local()

function ToLocalDate (inDate) {
  var date = new Date();
  date.setTime(inDate.valueOf() - 60000 * inDate.getTimezoneOffset());
  return date;
}

function epochToJsDate(ts){
  return new Date(ts*1000);
}

function jsDateToEpoch(d){
  //return (d.getTime()-d.getMilliseconds())/1000;
}

var n = Date.now();
console.info("Date.now(): " + n);
