#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface WaterFall : UIView {
    CAEmitterLayer *emitterLayer;
}
@property CGFloat longitude;
@property CGFloat xAcceleration;
@property CGFloat yAcceleration;

- (void) startWaterFlow;
-(void) setXY:(CGFloat)x yAcceleration:(CGFloat)y velocity:(CGFloat)velocity;

@end