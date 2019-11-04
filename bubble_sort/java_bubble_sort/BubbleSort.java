import java.lang.*;

class BubbleSort {
  public static void main( String[] args ) {
    if( args.length != 0 ) {
      System.err.println( "Usage: java -jar BubbleSort.jar <noargs>");
      System.exit(1);
    }

    int[] arr = {10, 2, 4, 1, 6, 5, 8, 7, 3, 9};

    printArray(arr);
    bubble_sort(arr, 0, arr.length -1);
    printArray(arr);
  }

  public static void printArray( int[] arr ) {
    int idx_i = 0;

    for( idx_i = 0; idx_i < arr.length; idx_i++ ) {
      System.out.print(arr[idx_i] + " ");
    }
    System.out.print("\n");
  }


  public static void bubble_sort( int[] arr, int lb, int ub ) {
    int idx_i = 0;
    int idx_j = 0;
    int tmp = 0;

    for( idx_i = lb + 1; idx_i <= ub; idx_i++ ) {
      for( idx_j = lb; idx_j <= ub - idx_i; idx_j++ ) {
        if( arr[idx_j] > arr[idx_j + 1] ) {
          tmp = arr[idx_j];
          arr[idx_j] = arr[idx_j + 1];
          arr[idx_j + 1] = tmp;
        }
      }
    }
  }

  // A function to implement bubble sort
  public static void r_bubble_sort(int arr[], int n) {
      // Base case
      if (n == 1)
          return;

      // One pass of bubble sort. After
      // this pass, the largest element
      // is moved (or bubbled) to end.
      for (int i=0; i<n-1; i++) {
          if (arr[i] > arr[i+1]) {
              // swap arr[i], arr[i+1]
              int temp = arr[i];
              arr[i] = arr[i+1];
              arr[i+1] = temp;
          }
      }

      // Largest element is fixed,
      // recur for remaining array
      r_bubble_sort(arr, n-1);
  }
}

/*    void bubble_sort(int a[]) throws Exception {
        for( int i = a.length; --i>=0; ) {
            for( int j = 0; j < i; j++ ) {
                if( stopRequested ) {
                    return;
                }
                if( a[j] > a[j+1] ) {
                    int T = a[j];
                    a[j] = a[j+1];
                    a[j+1] = T;
                }
                compex(j, j + 1);
                pause(i);
            }
        }
    }
 */
