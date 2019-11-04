#import <stdio.h>
#import "hanoi.h"

#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);

@implementation TowersOfHanoi

-(void) setPegFrom: (int) from andSetPegTo: (int) to andSetPegVia: (int) via andSetNumDisks: (int) disks {
  pegFrom = from;
  pegTo = to;
  pegVia = via;
  numDisks = disks;
}

-(void) movePegFrom: (int) from andMovePegTo: (int) to andMovePegVia: (int) via andWithNumDisks: (int) disks {
  if (disks == 1) {
    NSLog("Move disk from pole %i to pole %i\n", from, to);
  } else {
    [self movePegFrom: from andMovePegTo: via andMovePegVia: to andWithNumDisks: disks-1];
    [self movePegFrom: from andMovePegTo: to andMovePegVia: via andWithNumDisks: 1];
    [self movePegFrom: via andMovePegTo: to andMovePegVia: from andWithNumDisks: disks-1];
  }
}
@end

int main( int argc, const char *argv[] ) {
  TowersOfHanoi *tower = [[TowersOfHanoi alloc] init];
  if( argc != 1 ) {
    NSLog(@"Usage: %s <noargs>", argv[0]);
    exit(1);
  }

  int from = 1;
  int to = 3;
  int via = 2;
  int disks = 3;

  [tower setPegFrom: from andSetPegTo: to andSetPegVia: via andSetNumDisks: disks];
  [tower movePegFrom: from andMovePegTo: to andMovePegVia: via andWithNumDisks: disks];

  return 0;
}
