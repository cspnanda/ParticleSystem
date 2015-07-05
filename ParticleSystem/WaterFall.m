#import "WaterFall.h"

@implementation WaterFall

@synthesize longitude,xAcceleration,yAcceleration;

+ (Class)layerClass
{
    return [CAEmitterLayer class];
}

-(id) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:self.frame];
    if(self) {
        
    }
    return self;
}

-(void) startWaterFlow
{
    CAEmitterCell *emitterCell = [CAEmitterCell emitterCell];
    emitterCell.lifetime = 100;
    emitterCell.velocity = 100;
    emitterCell.color = [[UIColor colorWithRed: 255/255 green: 255/255 blue: 255/255 alpha:0.3] CGColor];
  
    emitterCell.contents = (id) [[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"drop" ofType:@"png"]] CGImage];
    emitterCell.name = @"rain";
    emitterCell.velocityRange = 1;
    emitterCell.emissionRange = M_PI_2;
    emitterCell.xAcceleration=-10;
    emitterCell.yAcceleration=300;
    emitterCell.emissionLongitude = longitude;
  
  

    emitterLayer = (CAEmitterLayer *) self.layer;
    emitterLayer.emitterCells = [NSArray arrayWithObject: emitterCell];

    double delayInSeconds = 0.5;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delayInSeconds * NSEC_PER_SEC);
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void) {
        [emitterLayer setValue:[NSNumber numberWithFloat:2000.0]
                   forKeyPath:@"emitterCells.rain.birthRate"];
    });
    
}

-(void) setXY:(CGFloat)x yAcceleration:(CGFloat)y velocity:(CGFloat)velocity
{
  [emitterLayer setValue:[NSNumber numberWithFloat:y]
              forKeyPath:@"emitterCells.rain.yAcceleration"];

  [emitterLayer setValue:[NSNumber numberWithFloat:x]
              forKeyPath:@"emitterCells.rain.xAcceleration"];
  
  [emitterLayer setValue:[NSNumber numberWithFloat:velocity]
              forKeyPath:@"emitterCells.rain.velocity"];


}


@end