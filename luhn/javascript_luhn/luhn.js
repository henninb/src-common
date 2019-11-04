function luhnSum( cardNumber ) {
  var factor = 1;
  var luhnsum = 0;
  var inum = 0;
  var idx = 0;

  for( idx = cardNumber.length - 1; idx >= 0; idx-- ) {
    inum = parseInt(cardNumber[idx]);
    if( factor == 2 ) {
      inum = inum * 2;
      if( inum > 9 ) {
        inum = inum - 9;
      }
    }

    luhnsum += inum;
    if( factor == 1 ) {
      factor = 2;
    } else {
      factor = 1;
    }
  }
  return luhnsum;
}

function luhnCheck( cardNumber ) {
  var luhnsum = 0;

  luhnsum = luhnSum(cardNumber);

  if (luhnsum % 10 == 0 ) {
    console.log(cardNumber + " is a valid cardNumber.");
    return true;
  }
  console.log(cardNumber + " is NOT a valid cardNumber.");
  return false;
}

//console.log("luhnSum('379126015215813')=" + luhnSum("379126015215813"));
//console.log("luhnSum('4987002233114458')=" + luhnSum("4987002233114458"));
//console.log("luhnSum('6011000000000013')=" + luhnSum("6011000000000013"));
//console.log("luhnSum('6011000000000012')=" + luhnSum("6011000000000012"));
console.log("luhnCheck('379126015215813')=" + luhnCheck("379126015215813"));
console.log("luhnCheck('4987002233114458')=" + luhnCheck("4987002233114458"));
console.log("luhnCheck('6011000000000013')=" + luhnCheck("6011000000000013"));
console.log("luhnCheck('6011000000000012')=" + luhnCheck("6011000000000012"));
