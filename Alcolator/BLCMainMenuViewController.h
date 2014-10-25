//
//  BLCMainMenuViewController.h
//  Alcolator
//
//  Created by Colt Hansen on 10/25/14.
//  Copyright (c) 2014 Colt Hansen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BLCViewController.h"
#import "BLCWhiskeyViewController.h"

@interface BLCMainMenuViewController : UIViewController

@property (weak, nonatomic) UIButton *wine;
@property (weak, nonatomic) UIButton *whiskey;

-(void) winePressed:(UIButton *) sender;
-(void) whiskeyPressed:(UIButton *) sender;

@end
