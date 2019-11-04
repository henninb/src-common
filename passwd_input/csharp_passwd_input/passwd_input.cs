using System;
using System.Security; //.SecureString;

public class Example {
  public static void Main( string[] args ) {
    if( args.Length != 0 ) {
      Console.Error.WriteLine( "Usage: " + Environment.GetCommandLineArgs()[0] + " <noargs>" );
      Environment.Exit(1);
    }

    for( int idx_i = 0; idx_i < 10; idx_i++ ) {
      Console.WriteLine("example_function(" + idx_i + ")=<" + example_function(idx_i) + ">");
    }
    GetPassword();
  }
  public static int example_function( int n ) {
    return n;
  }

  public static SecureString GetPassword()
  {
    var pwd = new SecureString();
    while (true)
    {
        ConsoleKeyInfo i = Console.ReadKey(true);
        if (i.Key == ConsoleKey.Enter)
        {
            break;
        }
        else if (i.Key == ConsoleKey.Backspace)
        {
            if (pwd.Length > 0)
            {
                pwd.RemoveAt(pwd.Length - 1);
                Console.Write("\b \b");
            }
        }
        else
        {
            pwd.AppendChar(i.KeyChar);
            Console.Write("*");
        }
    }
    return pwd;
  }
}
