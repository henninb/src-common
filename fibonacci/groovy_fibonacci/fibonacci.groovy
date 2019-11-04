def fibonacci(n) {
  if (n < 2)
    return 1
  else
    return fibonacci(n-1) + fibonacci(n-2)
}

def main() {
  for(int idx_i = 1; idx_i < 25; idx_i++) {
    println('fibonacci(' + idx_i + ')=<' + fibonacci(idx_i) +  '>');
  }
}

main()
