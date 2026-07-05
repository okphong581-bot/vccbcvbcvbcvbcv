#import <UIKit/UIKit.h>
#import "AOTBoneManager.h"
#import "AOTRenderer.h"

@interface AOTFloatingMenu : UIView {
    UIButton *toggleButton;
    UITableView *boneTableView;
    UISlider *sensitivitySlider;
    UISwitch *aimbotSwitch;
    AOTBoneManager *boneManager;
    AOTRenderer *renderer;
}

- (void)setupUI;
- (void)toggleMenuVisibility;
- (void)renderSkeletonInContext:(CGContextRef)ctx;
- (void)handleTapOnBoneAtPoint:(CGPoint)point;
- (void)pinBone:(AOTBone *)bone atIndex:(NSUInteger)index;

@end
