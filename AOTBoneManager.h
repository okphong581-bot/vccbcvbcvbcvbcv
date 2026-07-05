#import <Foundation/Foundation.h>
#import "AOTPlayerStructure.h"
#import "Bones.h"

@interface AOTBoneManager : NSObject

@property (nonatomic, strong) NSMutableArray *bones;
- (void)updateBonePositions;
- (AOTVector3 *)worldToScreen:(AOTVector3 *)worldPos;

@end
