#import "AOTSettingsManager.h"

@implementation AOTSettingsManager

+ (instancetype)sharedManager {
    static AOTSettingsManager *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
        instance.aimbotEnabled = NO;
        instance.sensitivity = 0.5;
        instance.showSkeleton = YES;
    });
    return instance;
}

@end
