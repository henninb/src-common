#import <Foundation/Foundation.h>

#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);

@interface CelsiusConversion : NSObject

-(double) toFahrenheit:(double) x;
-(double) toCelsius:(double) x;
@end

@implementation CelsiusConversion

-(double) toFahrenheit:(double) x {
  return  x * (9.0/5.0) + 32.0;
}

-(double) toCelsius:(double) x {
  return (x - 32.0) * (5.0/9.0);
}
@end

int main (int argc, const char * argv[]) {
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  if( argc != 1 ) {
    NSLog(@"Usage: %s <noargs>", argv[0]);
    exit(1);
  }

  id celsius_conversion = [[CelsiusConversion alloc] init];
  NSLog(@"toFahrenheit(%d)=<%f>", 21, [celsius_conversion toFahrenheit:21.0]);
  NSLog(@"toCelsius(%d)=<%f>", 70, [celsius_conversion toCelsius:70.0]);
  [pool drain];
  return 0;
}
