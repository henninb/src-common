import java.lang.*;
import java.util.*;

public class Sleep {
  public static void main(String[] args) throws InterruptedException{
    int ms = 5000; //should be 5 secondsJava's sleep method accepts milliseconds
    System.out.println("Sleeping...");
    Thread.sleep(ms);
    System.out.println("Awake!");
  }
}
