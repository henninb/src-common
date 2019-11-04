#include <iostream>
#include <iomanip>
//#include "date.h"
//using namespace date;

bool is_leap_year(int year) {
  return year % 4 == 0 && (year % 100 != 0 || year % 400 == 0);
}

int date_today_function( int x ) {
  return x;
}

int main() {
  //std::tm tm;
  std::tm tm = {0,0,0,0,0,0,0,0,0,0,0};
  for( int idx_i = 0; idx_i < 10; idx_i++ ) {
  //for (auto year : {1900, 1994, 1996, 1997, 2000}) {
    std::cout << "date_today_function(" << idx_i << ")=<" << date_today_function(idx_i) << ">\n";
  }
  std::time_t tt=mktime(&tm);

    using namespace date;
    using namespace std;
    using namespace std::chrono;
    auto const now = system_clock::now();
    auto const dp = time_point_cast<days>(now);
    auto const date = year_month_day(dp);
    auto const time = make_time(now-dp);
    cout << date << ' ' << time << " UTC\n";
  return 0;
}
