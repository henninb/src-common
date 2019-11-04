#import <Foundation/Foundation.h>

#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);

@interface EntryPoint : NSObject

-(void) example:(char) x_name;
@end

@implementation EntryPoint

-(void) example:(char) x_name{
  NSPrint(@"x_name= %d", x_name);
}

@end

int main ( int argc, char *argv[] ) {
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  if( argc != 2 ) {
    NSLog(@"Usage: %s <args1>", argv[0]);
    exit(1);
  }

  id entry_point = [[EntryPoint alloc] init];
  [entry_pooint example:'9'];
  [entry_point example:9];

  [pool drain];
  return 0;
}
