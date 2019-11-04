import java.lang.*;

public class LinkedList {
  public static void main( String[] args ) {
    if( args.length != 0 ) {
      System.err.println( "Usage: java LinkedList.jar <noargs>");
      System.exit(1);
    }
    List list = new List();
    list.add( 10 );
    list.add( 6.76 );
    list.add( "A string" );
    list.add( 8.3 );
    System.out.println( "List " );
    list.print();
    System.out.println( "Size is " + list.getSize());
    System.out.println( list );
    list.deleteFirstDouble();
    list.print();
    list.add( "Second string" );
    list.add( 88 );
    list.print();
    System.out.println( list.getFirstDouble());
    System.out.println( list.getFirstInt());
    System.out.println( list.getFirstString());
    list.deleteFirstElement();
    list.print();
    list.deleteFirstInt();
    list.deleteFirstString();
    list.print();
  }
}
