using System;

public class PermutePrintIntegerMain {
  public static void Main( string[] args ) {
    if( args.Length != 0 ) {
      Console.Error.WriteLine( "Usage: " + Environment.GetCommandLineArgs()[0] + " <noargs>" );
      Environment.Exit( 1 );
    }

    int[] list = {1,2,3,4,5};
    //char[] list = {'r', 'e', 'g', 'n', 'o', 'a'};
    permutePrintInteger(list, 0, 2);
    permutePrintInteger(list, 0, 3);
    permutePrintInteger(list, 0, 4);
    permutePrintInteger(list, 0, 5);
  }

  private static void permutePrintInteger( int[] list, int startingIndex, int listLength ) {
    int idx_i;
    int tmp;

    if( startingIndex == listLength ) {
      for( int idx = 0; idx < listLength; idx++ ) {
        //printf("%c", list[idx]);
        Console.Write(list[idx]);
      }
      //printf("\n");
      Console.WriteLine(string.Empty);

    } else {
      for( idx_i = startingIndex; idx_i < listLength; idx_i++ ) {
        tmp = list[idx_i];
        list[idx_i] = list[startingIndex];
        list[startingIndex] = tmp;
        permutePrintInteger(list, startingIndex + 1, listLength);
        tmp = list[idx_i];
        list[idx_i] = list[startingIndex];
        list[startingIndex] = tmp;
      }
    }
  }
}
