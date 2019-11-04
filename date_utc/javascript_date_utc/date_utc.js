var utcDate = new Date(Date.UTC(96, 11, 1, 0, 0, 0));

let utc_val = new Date(Date().getTime() + date_val.getTimezoneOffset() * 60000);
Math.round(utc_val.getTime() / 1000);

console.log(utcDate);

var now = new Date();
var n = now.toUTCString();

console.log(n);
