//comment
int example_function(n) {
  return n;
}

void main() {
  for (var idx_i = 0; idx_i < 10; idx_i++) {
    print('example_function(' + idx_i.toString() + ')=<' + example_function(idx_i).toString() +  '>');
  }
}
