//def factorial(n) {
//  n<=1?1:factorial(n-1)*n
//}

def factorial(n) {
  if (n < 2)
    return 1
  else
    return n * factorial(n-1)
}


def main() {
  for(int idx_i = 1; idx_i < 13; idx_i++) {
    println('factorial(' + idx_i + ')=<' + factorial(idx_i) +  '>');
  }
}

main()
//assert [1,1,2,6,24,120,720,5040,40320,362880,3628800] == (0..10).collect {factorial(it)}
