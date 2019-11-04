#import <Foundation/Foundation.h>

#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);

static void NSPrint(NSString *format, ...) {
  va_list args;
  va_start(args, format);

  NSString *string = [[NSString alloc] initWithFormat:format arguments:args];
  va_end(args);
  fprintf(stdout, "%s\n", [string UTF8String]);
}

@interface Example : NSObject

-(int) example_function:(int) n;
@end

@implementation Example

-(int) example_function:(int) n{
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
  int idx_i;

  id example = [[Example alloc] init];
  for( idx_i = 1; idx_i < 10; idx_i++ ) {
    NSPrint(@"example_function(%d)=<%d>", idx_i, [example example_function:idx_i]);
  }
  [pool drain];
  return 0;
}
