function easterCalculator(year) {
    var a = year % 19;
    var b = Math.floor(year / 100);
    var c = year % 100;
    var h = (19 * a + b - Math.floor(b / 4) - Math.floor((b - Math.floor((b + 8) / 25) + 1) / 3) + 15) % 30;
    var k = (32 + 2 * (b % 4) + 2 * Math.floor(c / 4) - h - c % 4) % 7;
    var m = Math.floor((a + 11 * h + 22 * k) / 451)
    var month = Math.floor((h + k - 7 * m + 114) / 31) - 1
    var day = ((h + k - 7 * m + 114) % 31) + 1
    return new Date(year, month, day)
}

//console.info(easterCalculator(2018));

for( idx_i = 2018; idx_i < 2100; idx_i++ ) {
  console.info(easterCalculator(idx_i))
}
