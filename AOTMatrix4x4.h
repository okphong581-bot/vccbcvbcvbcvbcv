#import <Foundation/Foundation.h>
#import "AOTVector3.h"

@interface AOTMatrix4x4 : NSObject

@property (nonatomic, assign) float m[16];

+ (instancetype)identity;
+ (instancetype)getViewProjectionMatrix;
- (AOTVector3 *)multiplyVector:(AOTVector3 *)vec;

@end
