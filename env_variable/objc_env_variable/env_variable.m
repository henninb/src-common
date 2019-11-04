#import <Foundation/Foundation.h>

#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);

@interface EnvVariable : NSObject

-(int) env_variable_function:(int) n;
@end

@implementation EnvVariable

-(int) env_variable_function:(int) n{
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

  id env_variable = [[EnvVariable alloc] init];
  for( idx_i = 1; idx_i < 2; idx_i++ ) {
    NSLog([[[NSProcessInfo processInfo] environment] objectForKey:@"OS"]);
  }
  [pool drain];
  return 0;
}
