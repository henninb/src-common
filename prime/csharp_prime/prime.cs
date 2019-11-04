using System;

public class Example {
  public static void Main( string[] args ) {
    if( args.Length != 0 ) {
      Console.Error.WriteLine( "Usage: " + Environment.GetCommandLineArgs()[0] + " <noargs>" );
      Environment.Exit(1);
    }

    //Console.WriteLine( args[1] );
    //Console.WriteLine("reservation");
    for( ulong idx_i = 0; idx_i < 100; idx_i++ ) {
      Console.WriteLine("is_prime (" + idx_i + ") = " +  isPrime(idx_i));
    }
  }

  private static int isPrime(ulong number) {
    ulong idx_i;
    for ( idx_i=2; idx_i < number; idx_i++ ) {
        if (number % idx_i == 0 && idx_i != number) {
          return 0;
        }
    }
    return 1;
  }
}
