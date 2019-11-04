using System;

public class Luhn {
  public static void Main( string[] args ) {
    if( args.Length != 0 ) {
      Console.Error.WriteLine("Usage: " + Environment.GetCommandLineArgs()[0] + " <noargs>");
      Environment.Exit(1);
    }

    //Console.WriteLine("luhnSum('379126015215813')=<" + luhnSum("379126015215813") + ">");
    //Console.WriteLine("luhnSum('4987002233114458')=<" + luhnSum("4987002233114458") + ">");
    //Console.WriteLine("luhnSum('6011000000000013')=<" + luhnSum("6011000000000013") + ">");
    //Console.WriteLine("luhnSum('6011000000000012')=<" + luhnSum("6011000000000012") + ">");
    luhnCheck("379126015215813");
    luhnCheck("4987002233114458");
    luhnCheck("6011000000000013");
    luhnCheck("6011000000000012");
  }

  public static int luhnCheck( string cardNumber ) {
    int luhnsum = 0;

    luhnsum = luhnSum(cardNumber);

    if (luhnsum % 10 == 0 ) {
      Console.WriteLine("cardNumber " + cardNumber + " is valid.");
      return 1;
    }
    Console.WriteLine("cardNumber " + cardNumber + " is NOT valid.");
    return 0;
  }

  public static int luhnSum( string cardNumber ) {
    int factor = 1;
    int luhnsum = 0;
    int inum = 0;
    int idx;

    for( idx = cardNumber.Length - 1; idx >= 0; idx-- ) {
      inum = cardNumber[idx] - 48;
      if( factor == 2 ) {
        inum = inum * 2;
        if( inum > 9 ) {
          // sum of the two digits for the two digits sum
          inum = inum - 9;
        }
      }

      luhnsum += inum;
      //factor = (factor == 1) ? 2 : 1;
      if( factor == 1 ) {
        factor = 2;
      } else {
        factor = 1;
      }
    }
    return luhnsum;
  }
}
