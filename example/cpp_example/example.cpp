#include <iostream>

bool is_leap_year(int year) {
  return year % 4 == 0 && (year % 100 != 0 || year % 400 == 0);
}

int example_function( int x ) {
  return x;
}

int main() {
  for( int idx_i = 0; idx_i < 10; idx_i++ ) {
  //for (auto year : {1900, 1994, 1996, 1997, 2000}) {
    std::cout << "example_function(" << idx_i << ")=<" << example_function(idx_i) << ">\n";
  }
  return 0;
}
