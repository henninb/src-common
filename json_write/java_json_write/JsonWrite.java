import java.lang.*;
//import java.lang.reflect.*;
//comment

import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class JsonWrite {
  private static ObjectMapper mapper = new ObjectMapper();

  public JsonWrite() {
    //String className = this.getName();
    //Class s = this.getSuperclass();
  }

  public static void main( String[] args ) {
    if( args.length != 0 ) {
      System.err.println( "Usage: java -jar JsonWrite.jar <noargs>");
      System.exit(1);
    }
    //System.out.println("args[0]=" + args[0]);
    try {
      //mapper.setVisibility(PropertyAccessor.FIELD, Visibility.ANY);
      System.out.println(mapper.writeValueAsString(new Inner()));
      //Object to JSON in file
      mapper.writeValue(new File("output.json"), new Inner());
    } catch( Exception e ) {
      System.out.println(e);
    }
    //pi_calculate();
    //mypi();
  }
}

  class Inner {
    public String foo = "bar";
    public String name = "lilly";
  }
