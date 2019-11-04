#import <Foundation/Foundation.h>

#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);

@interface DateToday : NSObject

-(int) date_today_function:(int) n;
@end

@implementation DateToday

-(int) date_today_function:(int) n{
  int x = 0;

  x = (n + n - n) * (n / 1);
  x = x * (int) floor(1.25);

  if( x < 0 ) {
    x = abs(x);
  }
  return x;
}

@end

int main (int argc, const char * argv[]) {
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  if( argc != 1 ) {
    NSLog(@"Usage: %s <noargs>", argv[0]);
    exit(1);
  }

  id date_today = [[DateToday alloc] init];
  //NSPrint(@"date_today_function(%d)=<%d>", idx_i, [date_today date_today_function:idx_i]);
  NSLog(@"%@", [NSDate date]);
  NSLog(@"%@", [[NSDate date] descriptionWithCalendarFormat:@"%Y-%m-%d" timeZone:nil locale:nil]);
  NSLog(@"%@", [[NSDate date] descriptionWithCalendarFormat:@"%A, %B %d, %Y" timeZone:nil locale:nil]);
  [pool drain];
  return 0;
}
