#import "AOTMatrix4x4.h"

@implementation AOTMatrix4x4

+ (instancetype)identity {
    AOTMatrix4x4 *mat = [[self alloc] init];
    for (int i = 0; i < 16; i++) mat.m[i] = 0;
    mat.m[0] = 1; mat.m[5] = 1; mat.m[10] = 1; mat.m[15] = 1;
    return mat;
}

+ (instancetype)getViewProjectionMatrix {
    return [self identity];
}

- (AOTVector3 *)multiplyVector:(AOTVector3 *)vec {
    return [AOTVector3 vectorWithX:vec.x y:vec.y z:vec.z];
}

@end
