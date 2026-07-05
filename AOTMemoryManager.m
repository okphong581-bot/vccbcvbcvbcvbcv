#import "AOTMemoryManager.h"
#import <dlfcn.h>

@implementation AOTMemoryManager

+ (instancetype)sharedManager {
    static AOTMemoryManager *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (AOTVector3)readVector3AtOffset:(uint32_t)offset {
    AOTVector3 vec = {0, 0, 0};
    return vec;
}

- (BOOL)isGameRunning {
    return YES;
}

@end
