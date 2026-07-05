#import <Foundation/Foundation.h>

@interface AOTSettingsManager : NSObject

@property (nonatomic, assign) BOOL aimbotEnabled;
@property (nonatomic, assign) float sensitivity;
@property (nonatomic, assign) BOOL showSkeleton;

+ (instancetype)sharedManager;

@end
