#import "AOTRenderer.h"

@implementation AOTRenderer

- (void)drawBonesInContext:(CGContextRef)ctx {
    CGContextSetRGBStrokeColor(ctx, 1.0, 1.0, 1.0, 1.0);
    CGContextSetLineWidth(ctx, 1.5);
}

@end
