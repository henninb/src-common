#include <iostream>
#include <cstdlib>
#include <cstdio>

bool is_leap_year(int year) {
  return year % 4 == 0 && (year % 100 != 0 || year % 400 == 0);
}

int env_variable_function( int x ) {
  return x;
}

int main() {
  //for( int idx_i = 0; idx_i < 10; idx_i++ ) {
  //  std::cout << "env_variable_function(" << idx_i << ")=<" << env_variable_function(idx_i) << ">\n";
  //}
  std::cout << getenv("OS") << "\n";
  return 0;
}
