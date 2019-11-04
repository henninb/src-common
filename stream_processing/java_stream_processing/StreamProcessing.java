import java.lang.*;
import java.util.Arrays;
import java.util.stream.*;
//import java.util.stream.IntStream;
import java.util.*;
import java.io.*;
import java.nio.file.Files;
import java.nio.file.Paths;
//java.util.List
//comment

public class StreamProcessing {
  class Numbers {
    String First;
    String Second;
  }

  public static void processFile( String ifname ) {
    try (Stream<String> stream = Files.lines(Paths.get(ifname))) {
      //stream.forEach(System.out::println);
      //string.split("-")
      stream.skip(1)
      .sorted()
      .map(s -> {
        //System.out.println("map: " + s);
        String[] list = s.split(" ");
        return s.toUpperCase();
    })
      .forEach(System.out::println);
    } catch (IOException e) {
      e.printStackTrace();
    }
  }



  public static void main( String[] args ) {
    if( args.length != 0 ) {
      System.err.println("Usage: java -jar StreamProcessing.jar <noargs>");
      System.exit(1);
    }

    processFile("input.txt");

 //Arrays.stream("b,l,a".split(","))
//Stream.of("b,l,a".split(","))
//Pattern.compile(",").splitAsStream("b,l,a")

   //try (Stream<String> stream = Files.lines(Paths.get("input.txt"))) {
   //  //stream.forEach(System.out::println);
   //  stream.sorted().forEach(System.out::println);
   //} catch (IOException e) {
   //  e.printStackTrace();
   //}



    //System.out.println("");
    // Arrays.stream(new int[] {1, 2, 3})
    // .map(n -> 2 * n + 1)
    // .average()
    // .ifPresent(System.out::println);
    //
    //System.out.println("");
    //List<String> myList = Arrays.asList("a1", "c6", "a2", "b1", "c2", "c1", "c0");
    // myList.stream().filter(s -> s.startsWith("c")).sorted().forEach(System.out::println);
    //
    //System.out.println("");
    //Arrays.asList("a1", "a2", "a3")
    //.stream()
    //.findFirst()
    //.ifPresent(System.out::println);
    //
    //System.out.println("");
    //IntStream.range(1, 6).forEach(System.out::println);
    //
    //System.out.println("");
    //Stream.of("a1", "a2", "a3")
    //.map(s -> s.substring(1))
    //.mapToInt(Integer::parseInt)
    //.max()
    //.ifPresent(System.out::println);
    //
    //System.out.println("");
    //IntStream.range(1, 4)
    //.mapToObj(i -> "a" + i)
    //.forEach(System.out::println);
    //
    //System.out.println("");
    //Stream.of(1.0, 2.0, 3.0)
    //.mapToInt(Double::intValue)
    //.mapToObj(i -> "a" + i)
    //.forEach(System.out::println);
    //
    //System.out.println("");
    //Stream.of("d2", "a2", "b1", "b3", "c")
    //.filter(s -> {
    //    System.out.println("filter: " + s);
    //    return true;
    //})
    //.forEach(s -> System.out.println("forEach: " + s));
    //System.out.println("");
    //Stream.of("d2", "a2", "b1", "b3", "c")
    //.map(s -> {
    //    System.out.println("map: " + s);
    //    return s.toUpperCase();
    //})
    //.filter(s -> {
    //    System.out.println("filter: " + s);
    //    return s.startsWith("A");
    //})
    //.forEach(s -> System.out.println("forEach: " + s));
    //System.out.println("");
  }
}
