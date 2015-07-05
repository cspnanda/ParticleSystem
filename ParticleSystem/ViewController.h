//
//  ViewController.h
//  ParticleSystem
//
//  Created by Prasanna Nanda on 7/4/15.
//  Copyright (c) 2015 C S Prasanna Nanda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WaterFall.h"
@interface ViewController : UIViewController 

@property (strong) WaterFall *waterFall;

@property (weak) IBOutlet UIImageView *waterHose1;

@property (weak) IBOutlet UILabel *startPoint;
@property (weak) IBOutlet UISegmentedControl *modeSelector;

@end

