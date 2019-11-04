//comment
var date_today = function () {
  var local = new Date();
  var year = local.getFullYear();
  var month = local.getMonth() + 1; //months from 1-12
  var day = local.getDate();
  var hour = local.getHours();
  var min = local.getMinutes();
  var sec = local.getSeconds();

  console.log('local=<' + year + "-" + month + "-" + day + ' ' + hour + ':' + min + ':' + sec + '>');
};

var date_utc = function () {
  var utc = new Date();
  var year = utc.getUTCFullYear();
  var month = utc.getUTCMonth() + 1; //months from 1-12
  var day = utc.getUTCDate();
  var hour = utc.getUTCHours();
  var min = utc.getUTCMinutes();
  var sec = utc.getUTCSeconds();

  console.log('utc=<' + year + "-" + month + "-" + day + ' ' + hour + ':' + min + ':' + sec + '>');
};


var main = function(){
  date_today();
  date_utc();
};

main();
