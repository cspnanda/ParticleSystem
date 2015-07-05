//
//  ViewController.m
//  ParticleSystem
//
//  Created by Prasanna Nanda on 7/4/15.
//  Copyright (c) 2015 C S Prasanna Nanda. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController
@synthesize waterFall,waterHose1,startPoint,modeSelector;


-(IBAction)waterModeChanged:(id)sender
{
  if(modeSelector.selectedSegmentIndex == 0)
  {
    [waterFall setXY:-10 yAcceleration:300 velocity:100];
  }
  if(modeSelector.selectedSegmentIndex == 1)
  {
    [waterFall setXY:-10 yAcceleration:0 velocity:100];
  }
}

-(void) viewDidAppear:(BOOL)animated
{
  [super viewDidAppear:animated];
//  xSize.constant = 0;
//  ySize.constant = 0;
//  [tree layoutIfNeeded];
}
- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  [self dropWaterFromHose];
}
-(CGSize) returnScreenSize
{
  CGRect screenBounds = [[UIScreen mainScreen] bounds];
  return CGSizeMake(screenBounds.size.width, screenBounds.size.height);
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}





-(void) dropWaterFromHose
{
  CGSize screenSize = [self returnScreenSize];
  [waterHose1 setHidden:NO];
  waterFall = [[WaterFall alloc] init];
  [waterFall setLongitude:M_PI];
  
  
  [UIView animateWithDuration:0.5
                        delay:0.0f
                      options:UIViewAnimationOptionTransitionCrossDissolve
                   animations:^{
                     [waterHose1 setFrame:CGRectMake(screenSize.width*0.15, screenSize.height*0.3, screenSize.width*0.25, screenSize.width*0.2)];
                   }
                   completion:^ (BOOL finished)
   {
     if(finished)
     {
       [waterFall startWaterFlow];
       [waterFall setFrame:CGRectMake(startPoint.center.x, startPoint.center.y, screenSize.width*0.2, screenSize.width*0.2)];

     }
   }
   ];
  [self.view addSubview:waterFall];

}

@end
