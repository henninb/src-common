using System;

public class SelectionSort {
  public static void Main( string[] args ) {
    if( args.Length != 0 ) {
      Console.Error.WriteLine( "Usage: " + Environment.GetCommandLineArgs()[0] + " <noargs>" );
      Environment.Exit(1);
    }
    int[] intList = { 55, 6,12, 42,18, 1,5};
    String[] stringList = { "this", "is", "a", "test", "of", "generic", "selection", "sort" };
    SelectionSort<String> stringSort = new SelectionSort<string>();
    SelectionSort<int> intSort = new SelectionSort<int>();

    String[] stringResult = stringSort.Sort(stringList);
    for (int i = 0; i < stringResult.Length; i++) {
      Console.Write(stringResult[i] + " ");
    }
    Console.WriteLine("");

    int[] intResult = intSort.Sort(intList);
    for( int idx = 0; idx < intList.Length; idx++ ) {
      Console.Write(intResult[idx] + " ");
    }
    Console.WriteLine("");
  }
}

class SelectionSort<T> where T : IComparable {
  public T[] Sort(T[] list) {
    int k;
    T temp;

    for (int i = 0; i < list.Length; i++) {
      k = i;
      for (int j=i + 1; j < list.Length; j++) {
        if (list[j].CompareTo(list[k]) < 0) {
          k = j;
        }
      }
      temp = list[i];
      list[i] = list[k];
      list[k] = temp;
    }
    return list;
  }
}
