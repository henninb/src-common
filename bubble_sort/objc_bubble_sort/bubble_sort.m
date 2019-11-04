#import <Foundation/Foundation.h>
#include <stdbool.h>
//typedef enum {false, true} bool;
#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);

@interface BubbleSort : NSObject
{
  char name;
}

-(void) setVar:(char) x_name;
-(NSArray *)bubbleSort:(NSMutableArray *)unsortedDataArray;
@end

@implementation BubbleSort

-(void) setVar:(char) x_name{
  name = x_name;
}

-(NSArray *)bubbleSort:(NSMutableArray *)unsortedDataArray {
  long count = unsortedDataArray.count;
  int i;
  bool swapped = true;
  while (swapped){
    swapped = false;
    for( i = 1; i < count; i++ ) {
      if ([unsortedDataArray objectAtIndex:(i-1)] > [unsortedDataArray objectAtIndex:i]) {
        [unsortedDataArray exchangeObjectAtIndex:(i-1) withObjectAtIndex:i];
        swapped = true;
      }
      //bubbleSortCount ++; //Increment the count everytime a switch is done, this line is not required in the production implementation.
    }
  }
  return unsortedDataArray;
}

@end

int main (int argc, const char * argv[]) {
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  if( argc != 1 ) {
    NSLog(@"Usage: %s <noargs>", argv[0]);
    exit(1);
  }
  //NSArray *dArray =@[@101, @201, @301,@121,@11,@123,@21,@14,@32,@76,@89,@987,@65];
  //NSMutableArray *dataArray = [NSMutableArray arrayWithArray:dArray];
  NSLog(@"Size of BOOL %d", sizeof(BOOL));
  NSLog(@"Size of bool %d", sizeof(bool));
  id bubble_sort = [[BubbleSort alloc] init];
  [bubble_sort setVar:'9'];
  [pool drain];
  return 0;
}
