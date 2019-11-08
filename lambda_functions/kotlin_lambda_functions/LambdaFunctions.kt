package LambdaFunctions

class LambdaFunctions {
  val calculateGrade = { grade : Int ->
    when(grade) {
        in 0..40 -> "Fail"
        in 41..70 -> "Pass"
        in 71..100 -> "Distinction"
        else -> "unknown"
    }
  }

  val square = { number: Int -> number * number }
  val array = arrayOf(1, 2, 3, 4, 5, 6)
}

fun main(args : Array<String>) {
  if( args.size != 0 ) {
    println("Usage: java -jar LambdaFunctions.jar <noargs>")
    System.exit(1)
  }

  val lambda_functions = LambdaFunctions()
  for (idx_i in 1..9) {
    println("lambda_function(" + idx_i + ")=<" + lambda_functions.calculateGrade(idx_i) + ">")
    println("lambda_function(" + idx_i + ")=<" + lambda_functions.square(idx_i) + ">")
  }
  lambda_functions.array.forEach { println(it * 4) }
}

