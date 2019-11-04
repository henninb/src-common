using System;
using System.Collections.Generic;

public class Program {
    public static IEnumerable<int[]> Combinations(int m, int n) {
        int[] result = new int[m];
        Stack<int> stack = new Stack<int>();
        for (int j = 0; j <= n - m; j++)
        {
            result[0] = j;
            stack.Push(j + 1);
            while (stack.Count > 0)
            {
                int i = stack.Count;
                int tail = result.Length - i;
                int k = stack.Pop();
                while (k <= n - tail)
                {
                    result[i] = k;
                    stack.Push(k + 1);

                    k++;
                    i++;
                    tail--;
                    if (i == result.Length)
                    {
                        yield return result;
                        break;
                    }
                }
            }
        }
    }

  public static void Main( string[] args ) {
    if( args.Length != 0 ) {
      Console.Error.WriteLine( "Usage: " + Environment.GetCommandLineArgs()[0] + " <noargs>" );
      Environment.Exit( 1 );
    }

    //Console.WriteLine( factorial( 5 ) );
        foreach (int[] c in Combinations(3, 5)) {
            for (int i = 0; i < c.Length; i++) {
                Console.Write(c[i] + " ");
            }
            Console.WriteLine();
        }
  }
}
