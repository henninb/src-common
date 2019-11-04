function convertUTCDateToLocalDate(date) {
  var newDate = new Date(date.getTime()+date.getTimezoneOffset()*60*1000);
  var offset = date.getTimezoneOffset() / 60;
  var hours = date.getHours();

  newDate.setHours(hours - offset);

  return newDate;
}

function date_utc() {
  var utc = new Date();
  var year = utc.getUTCFullYear();
  var month = utc.getUTCMonth() + 1; //months from 1-12
  var day = utc.getUTCDate();
  var hour = utc.getUTCHours();
  var min = utc.getUTCMinutes();
  var sec = utc.getUTCSeconds();

  console.log('utc=<' + year + "-" + month + "-" + day + ' ' + hour + ':' + min + ':' + sec + '>');
}

function date_today() {
  var local = new Date();
  var year = local.getFullYear();
  var month = local.getMonth() + 1; //months from 1-12
  var day = local.getDate();
  var hour = local.getHours();
  var min = local.getMinutes();
  var sec = local.getSeconds();

  console.log('local=<' + year + "-" + month + "-" + day + ' ' + hour + ':' + min + ':' + sec + '>');
}



function main() {
  date_today()
  date_utc()
}
main()


