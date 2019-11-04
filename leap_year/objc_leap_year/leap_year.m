#import <Foundation/Foundation.h>

#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);

@interface LeapYear : NSObject

-(int) leap_year:(int) year;
@end

@implementation LeapYear

-(int) leap_year:(int) year {
  if( year > 1581 ) {
    return(((year % 4 == 0) && (year % 100 > 0)) || (year % 400 == 0));
  } else {
    return 0;
  }
}

@end

int main (int argc, const char * argv[]) {
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  if( argc != 1 ) {
    NSLog(@"Usage: %s <noargs>", argv[0]);
    exit(1);
  }

  int idx_i;

  for( idx_i = 1999; idx_i < 2101; idx_i++ ) {
    id leap_year = [[LeapYear alloc] init];
    NSLog(@"leap_year(%d)=<%d>", idx_i, [leap_year leap_year:idx_i]);
  }

  [pool drain];
  return 0;
}
