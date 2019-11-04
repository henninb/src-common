using System;

public class LinkedListMain {
  public static void Main( string[] args ) {
    if( args.Length != 1 ) {
      Console.Error.WriteLine( "Usage: " + Environment.GetCommandLineArgs()[0] + " <first_arg>" );
      Environment.Exit(1);
    }

    LinkedList list = null;

  LinkedList a = new LinkedList( "Alice" );
  a.Next = list;
  list = a;

  LinkedList b = new LinkedList( "Bob" );
  b.Next = list;
  list = b;

  LinkedList c = new LinkedList( "Carol" );
  c.Next = list;
  list = c;

  for( LinkedList p = people; p != null; p = p.Next ) {
    Console.WriteLine( p.Name );
  }
  //Console.WriteLine(args[0]);
  //Console.Out.WriteLine("Hello standard out !");
  //new Example();
}
}
