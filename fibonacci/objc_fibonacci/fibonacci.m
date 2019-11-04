#import <Foundation/Foundation.h>
#include <stdbool.h>
//comment
#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);

@interface Fibonacci : NSObject
-(int)fibonacci:(int)num;
@end

@implementation Fibonacci
-(int)fibonacci:(int)num {
  if (num == 0) {
    return 0;
  }
  if (num == 1) {
    return 1;
  }
  return [self fibonacci:num - 1] + [self fibonacci:num - 2];
}
@end

int main (int argc, const char * argv[]) {
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  if( argc != 1 ) {
    NSLog(@"Usage: %s <noargs>", argv[0]);
    exit(1);
  }
  int idx_i;

  id fibonacci = [[Fibonacci alloc] init];
  for( idx_i = 1; idx_i < 25; idx_i++ ) {
    NSLog(@"fibonacci(%d)=<%d>", idx_i, [fibonacci fibonacci:idx_i]);
  }
  [pool drain];
  return 0;
}
