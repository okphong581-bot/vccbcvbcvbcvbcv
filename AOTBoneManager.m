#import "AOTBoneManager.h"
#import "AOTMemoryManager.h"
#import "AOTMatrix4x4.h"

@implementation AOTBoneManager

- (instancetype)init {
    self = [super init];
    if (self) {
        _bones = [NSMutableArray array];
    }
    return self;
}

- (void)updateBonePositions {
    AOTMemoryManager *mem = [AOTMemoryManager sharedManager];
    for (NSNumber *offset in @[
        @(BonesHead), @(BonesNeck), @(BonesHip),
        @(BonesLeftShoulder), @(BonesRightShoulder),
        @(BonesLeftElbow), @(BonesRightElbow),
        @(BonesLeftWrist), @(BonesRightWrist),
        @(BonesLeftHand), @(BonesRightHand),
        @(BonesLeftAnkle), @(BonesRightAnkle),
        @(BonesLeftFoot), @(BonesRightFoot),
        @(BonesRoot)
    ]) {
        AOTVector3 pos = [mem readVector3AtOffset:[offset unsignedIntValue]];
        AOTVector3 screen = [self worldToScreen:&pos];
        [_bones addObject:[NSValue valueWithCGPoint:CGPointMake(screen.x, screen.y)]];
    }
}

- (AOTVector3 *)worldToScreen:(AOTVector3 *)worldPos {
    AOTMatrix4x4 viewProj = [AOTMatrix4x4 getViewProjectionMatrix];
    return [viewProj multiplyVector:worldPos];
}

@end
