#import "AOTVector3.h"

@implementation AOTVector3

+ (instancetype)vectorWithX:(float)x y:(float)y z:(float)z {
    AOTVector3 *vec = [[self alloc] init];
    vec.x = x;
    vec.y = y;
    vec.z = z;
    return vec;
}

@end
