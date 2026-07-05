#import <Foundation/Foundation.h>

@interface AOTVector3 : NSObject

@property (nonatomic, assign) float x;
@property (nonatomic, assign) float y;
@property (nonatomic, assign) float z;

+ (instancetype)vectorWithX:(float)x y:(float)y z:(float)z;

@end
