#import <Foundation/Foundation.h>

#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);

@interface Factorial : NSObject

-(int) factorial:(int) n;
@end

@implementation Factorial

-(int) factorial:(int) n {
  if( n == 0 ) {
    return 0;
  } else if( n == 1 ) {
    return 1;
  } else {
    return(n * [self factorial:n - 1]);
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

  id factorial = [[Factorial alloc] init];
  for( idx_i = 1; idx_i < 14; idx_i++ ) {
    NSLog(@"factorial(%d)=<%d>", idx_i, [factorial factorial:idx_i]);
  }

  [pool drain];
  return 0;
}
