using System;
using System.IO;
using System.Diagnostics;

public class PiComputeMain {
  public static void Main( string[] args ) {
    if( args.Length != 0 ) {
      Console.Error.WriteLine( "Usage: " + Environment.GetCommandLineArgs()[0] + " <noargs>" );
      Environment.Exit( 1 );
    }

    //string x = CalculatePiDigits(100);
    //Console.WriteLine(x);
    string y = CalculatePi(100);
    Console.WriteLine(y);
  }

public static string CalculatePi(int digits) {
    digits++;

    uint[] x = new uint[digits*10/3+2];
    uint[] r = new uint[digits*10/3+2];

    uint[] pi = new uint[digits];

    for (int j = 0; j < x.Length; j++)
        x[j] = 20;

    for (int i = 0; i < digits; i++)
    {
        uint carry = 0;
        for (int j = 0; j < x.Length; j++)
        {
            uint num = (uint)(x.Length - j - 1);
            uint dem = num * 2 + 1;

            x[j] += carry;

            uint q = x[j] / dem;
            r[j] = x[j] % dem;

            carry = q * num;
        }


        pi[i] = (x[x.Length-1] / 10);


        r[x.Length - 1] = x[x.Length - 1] % 10;

        for (int j = 0; j < x.Length; j++)
            x[j] = r[j] * 10;
    }

    var result = "";

    uint c = 0;

    for(int i = pi.Length - 1; i >=0; i--)
    {
        pi[i] += c;
        c = pi[i] / 10;

        result = (pi[i] % 10).ToString() + result;
    }

    return result;
}


  private static int mul_mod(int a, int b, int m) {
    return (int) (((long) a * (long) b) % m);
  }

  /* return the inverse of x mod y */
  private static int inv_mod(int x, int y) {
    int q,u,v,a,c,t;

    u = x;
    v = y;
    c = 1;
    a = 0;

    do {
      q= v / u;

      t = c;
      c = a - q * c;
      a = t;

      t = u;
      u = v - q * u;
      v = t;
    } while (u != 0);

    a =a % y;

    if (a < 0) {
      a = y + a;
    }

    return a;
  }

  /* return (a^b) mod m */
  private static int pow_mod(int a, int b, int m) {
    int r, aa;

    r = 1;
    aa = a;

    while (true) {
      if ((b & 1) != 0)
      {
        r = mul_mod(r, aa, m);
      }

      b = b >> 1;

      if (b == 0) {
        break;
      }

      aa = mul_mod(aa, aa, m);
    }

    return r;
  }

  /* return true if n is prime */
  private static bool is_prime(int n)
  {
    if ((n % 2) == 0)
    {
      return false;
    }

    int r = (int) Math.Sqrt(n);

    for (int i = 3; i <= r; i += 2)
    {
      if ((n % i) == 0)
      {
        return false;
      }
    }

    return true;
  }

  /* return the prime number immediatly after n */
  private static int next_prime(int n)
  {
    do
    {
      n++;
    } while (!is_prime(n));

    return n;
  }

  private static String CalculatePiDigits(int n) {
    int av, vmax, num, den, s, t;

    int N = (int) ((n + 20) * Math.Log(10) / Math.Log(2));

    double sum = 0;

    for (int a = 3; a <= (2 * N); a = next_prime(a)) {
      vmax = (int) (Math.Log(2 * N) / Math.Log(a));

      av = 1;

      for (int i = 0; i < vmax; i++)
      {
        av = av * a;
      }

      s = 0;
      num = 1;
      den = 1;
      int v = 0;
      int kq = 1;
      int kq2 = 1;

      for (int k = 1; k <= N; k++)
      {

        t = k;

        if (kq >= a)
        {
          do
          {
            t = t / a;
            v--;
          } while ((t % a) == 0);

          kq = 0;
        }
        kq++;
        num = mul_mod(num, t, av);

        t = 2 * k - 1;

        if (kq2 >= a)
        {
          if (kq2 == a)
          {
            do
            {
              t = t / a;
              v++;
            } while ((t % a) == 0);
          }
          kq2 -= a;
        }
        den = mul_mod(den, t, av);
        kq2 += 2;

        if (v > 0)
        {
          t = inv_mod(den, av);
          t = mul_mod(t, num, av);
          t = mul_mod(t, k, av);

          for (int i = v; i < vmax; i++)
          {
            t = mul_mod(t, a, av);
          }

          s += t;

          if (s >= av)
          {
            s -= av;
          }
        }

      }

      t = pow_mod(10, n - 1, av);
      s = mul_mod(s, t, av);
      sum = (sum + (double) s / (double) av) % 1.0;
    }

    int Result = (int) (sum * 1e9);
    Console.WriteLine(Result);

    //Console.WriteLine("3.141592653");
    //Console.WriteLine("3.1415926535897932384626433832795");

    String StringResult = String.Format("{0:D9}", Result);

    return StringResult;
  }
}
