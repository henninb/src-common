import java.util.*;

public class List {
  public List() {
  }

  void add( int number ) {
    this.vector.addElement(new Integer(number));
  }

  void add( double number ) {
    this.vector.addElement(new Double(number));
  }

  void add( String string ) {
    this.vector.addElement(string);
  }

  void deleteFirstElement() {
    this.vector.removeElementAt(0);
  }

  int getFirstInt() {
    for( int i = 0; i < vector.size(); i++ ) {
      if( vector.elementAt( i ) instanceof Integer ) {
        return ((Integer)vector.elementAt( i )).intValue();
      }
    }
    return 0;
  }

double getFirstDouble() {
  for( int i = 0; i < vector.size(); i++ ) {
    if( vector.elementAt( i ) instanceof Double ) {
      return ((Double)vector.elementAt( i )).doubleValue();
    }
  }
  return 0.0;
}

String getFirstString() {
  for( int i = 0; i < vector.size(); i++ ) {
    if( vector.elementAt( i ) instanceof String ) {
      return (String)vector.elementAt( i );
    }
  }
  return("");
}

void print() {
  for( int i = 0; i < vector.size(); i++ ) {
    System.out.println( vector.elementAt( i ).toString());
  }
}

void deleteFirstInt() {
  for( int i = 0; i < vector.size(); i++ ) {
    if( vector.elementAt( i ) instanceof Integer ) {
      vector.removeElement( vector.elementAt( i ));
      break;
    }
  }
}

void deleteFirstDouble() {
  for( int i = 0; i < vector.size(); i++ ) {
    if( vector.elementAt( i ) instanceof Double ) {
      vector.removeElement( vector.elementAt( i ));
      break;
    }
  }
}

void deleteFirstString() {
  for( int i = 0; i < vector.size(); i++ ) {
    if( vector.elementAt( i ) instanceof String ) {
      vector.removeElement( vector.elementAt( i ));
      break;
    }
  }
}

  int getSize() {
    return this.vector.size();
  }

  public String toString() {
    return("List With " + vector.size() + " Elements.");
  }

  private Vector vector = new Vector();
}
