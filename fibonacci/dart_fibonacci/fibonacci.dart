//comment
int fibonacci(n) {
  if( n == 0 ) {
    return 0;
  } else if( n == 1 ) {
    return 1;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}

void main() {
  for (var idx_i = 1; idx_i < 25; idx_i++) {
    print('fibonacci(' + idx_i.toString() + ')=<' + fibonacci(idx_i).toString() +  '>');
  }
}
