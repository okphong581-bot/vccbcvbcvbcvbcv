#import "AOTFloatingMenu.h"
#import "AOTSettingsManager.h"

@implementation AOTFloatingMenu

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUI];
        boneManager = [[AOTBoneManager alloc] init];
        renderer = [[AOTRenderer alloc] initWithFrame:frame];
        [self addSubview:renderer];
    }
    return self;
}

- (void)setupUI {
    toggleButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [toggleButton setTitle:@"🟢" forState:UIControlStateNormal];
    toggleButton.frame = CGRectMake(20, 100, 60, 60);
    [toggleButton addTarget:self action:@selector(toggleMenuVisibility) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:toggleButton];

    boneTableView = [[UITableView alloc] initWithFrame:CGRectMake(90, 100, 200, 400)];
    boneTableView.backgroundColor = [UIColor blackColor];
    boneTableView.alpha = 0.0;
    boneTableView.delegate = (id<UITableViewDelegate>)self;
    boneTableView.dataSource = (id<UITableViewDataSource>)self;
    [self addSubview:boneTableView];

    sensitivitySlider = [[UISlider alloc] initWithFrame:CGRectMake(90, 520, 200, 30)];
    sensitivitySlider.minimumValue = 0.1;
    sensitivitySlider.maximumValue = 1.0;
    sensitivitySlider.value = 0.5;
    [self addSubview:sensitivitySlider];

    aimbotSwitch = [[UISwitch alloc] initWithFrame:CGRectMake(310, 100, 50, 30)];
    [self addSubview:aimbotSwitch];
}

- (void)toggleMenuVisibility {
    [UIView animateWithDuration:0.3 animations:^{
        self->boneTableView.alpha = (self->boneTableView.alpha == 0.0) ? 0.9 : 0.0;
    }];
}

- (void)renderSkeletonInContext:(CGContextRef)ctx {
    [renderer drawBonesInContext:ctx];
}

- (void)handleTapOnBoneAtPoint:(CGPoint)point {
}

- (void)pinBone:(AOTBone *)bone atIndex:(NSUInteger)index {
}

@end
