var now = new Date();
var h = now.getHours();
var m = now.getMinutes();
var s = now.getSeconds();

var days = ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'];
var day = days[ now.getDay() ];

console.log(day);
