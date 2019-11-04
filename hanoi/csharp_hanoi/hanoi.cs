using System;
//using System.Net;
//using System.IO;

public class Hanoi {
  public static void Main( string[] args ) {
    if( args.Length != 0 ) {
      Console.Error.WriteLine( "Usage: " + Environment.GetCommandLineArgs()[0] + " <noargs>" );
      Environment.Exit( 1 );
    }
    hanoi(3,'A','C','B');
  }

  public static void hanoi( int x, char from, char to, char aux ) {
  if( x == 1 ) {
    //printf("Move Disk From %c to %c\n",from,to);
    Console.WriteLine("Move Disk From " + from + " to " + to);
  } else {
    hanoi(x-1,from,aux,to);
    //printf("Move Disk From %c to %c\n",from,to);
    Console.WriteLine("Move Disk From " + from + " to " + to);
    hanoi(x-1,aux,to,from);
  }
}

}
