using System;
using System.Net;
using System.IO;
using System.Text;

public class EulerPhi {
  public static void Main( string[] args ) {
    if( args.Length != 0 ) {
      Console.Error.WriteLine( "Usage: " + Environment.GetCommandLineArgs()[0] + " <noargs>" );
      Environment.Exit( 1 );
    }

    for( int idx_i = 1; idx_i < 25; idx_i++ ) {
      Console.WriteLine("euler_phi(" + idx_i +")=<" +  euler_phi(idx_i) + ">");
    }
  }

  public static int euler_phi( int n ) {
    int remainder = n;
    int phi = n;
    int odd = 0;

    if( (remainder % 2) == 0 ) {
       phi = phi / 2;
       while( (remainder % 2) == 0 ) {
         remainder = remainder / 2;
       }
    }

    odd = 3;

    while (odd <= remainder ) {
      if (remainder % odd == 0 ) {
        phi = phi * (odd - 1) / odd;
        while( (remainder % odd) == 0 ) {
          remainder = remainder / odd;
        }
      }
      odd = odd + 2;
    }
    return phi;
  }
}
