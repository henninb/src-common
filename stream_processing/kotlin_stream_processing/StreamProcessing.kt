package StreamProcessing

import java.io.IOException
import java.nio.file.Files
import java.nio.file.Paths

//comment
class StreamProcessing {
    fun processFile(ifname: String) {
        try {
            Files.lines(Paths.get(ifname)).use({ stream ->
                //stream.forEach(System.out::println);
                //string.split("-")
                stream.sorted()
                        .map({ s ->
                            //System.out.println("map: " + s);
                            val list = s.split(" ")
                            s.toUpperCase()
                        })
                        .forEach({ System.out.println() })
            })
        } catch (e: IOException) {
            e.printStackTrace()
        }

    }
}

fun main(args : Array<String>) {
  if( args.size != 0 ) {
    println("Usage: java -jar StreamProcessing.jar <noargs>")
    System.exit(1)
  }
  val stream_processing = StreamProcessing()
  stream_processing.processFile("input.txt")
    //println("stream_processing_function(" + idx_i + ")=<" + stream_processing.stream_processing_function(idx_i) + ">")
}

