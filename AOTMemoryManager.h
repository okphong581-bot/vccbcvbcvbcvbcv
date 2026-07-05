#import <Foundation/Foundation.h>
#import <mach/mach.h>
#import "AOTVector3.h"

@interface AOTMemoryManager : NSObject

+ (instancetype)sharedManager;
- (AOTVector3)readVector3AtOffset:(uint32_t)offset;
- (BOOL)isGameRunning;

@end
