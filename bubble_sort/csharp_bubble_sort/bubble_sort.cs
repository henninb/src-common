using System;

public class Bubble {
  public static void Main( string[] args ) {

    if( args.Length != 0 ) {
      Console.Error.WriteLine("Usage: " + Environment.GetCommandLineArgs()[0] + " <noargs>");
      Environment.Exit(1);
    }

    driver();

  }
  public static void driver() {
    int[] IntArray = {10, 2, 4, 1, 6, 5, 8, 7, 3, 9};

    for( int idx_i = 0; idx_i < IntArray.Length; idx_i++ ) {
      Console.Write(IntArray[idx_i] + " ");
    }
    Console.WriteLine();

    BubbleSort(IntArray, IntArray.Length);
    for( int idx_i = 0; idx_i < IntArray.Length; idx_i++ ) {
      Console.Write(IntArray[idx_i] + " ");
    }
    Console.WriteLine(string.Empty);
  }

  private static void BubbleSort( int[] IntArray, int Count ) {
    bool Done;

    // array must be sorted
    if( Count < 2 ) {
      return;
    }

    Done = BubbleUp(IntArray, Count);
    if ( Done == false ) {
      BubbleSort(IntArray, Count - 1);
    }
  }

  private static bool BubbleUp( int[] IntArray, int Count ) {
    int idx_k;
    bool Done;
    int tmp;

    Done = true;   // until we know better
    for ( idx_k = 0; idx_k < Count - 1; idx_k++ ) {
      if( IntArray[idx_k] > IntArray[idx_k + 1] ) {
         Done = false;   // because we are making a swap
         tmp = IntArray[idx_k];
         IntArray[idx_k] = IntArray[idx_k + 1];
         IntArray[idx_k + 1] = tmp;
         //Swap(&IntArray[idx_k], &IntArray[idx_k + 1]);
      }
    }
    return Done;
  }
}
