//comment
int factorial(n) {
  if( n == 0 ) {
    return 0;
  } else if( n == 1 ) {
    return 1;
  } else {
    return (n * factorial(n - 1));
  }
}

void main() {
  for (var idx_i = 1; idx_i < 13; idx_i++) {
    print('factorial(' + idx_i.toString() + ')=<' + factorial(idx_i).toString() +  '>');
  }
}
