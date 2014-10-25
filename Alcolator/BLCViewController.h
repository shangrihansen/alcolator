//
//  ViewController.h
//  Alcolator
//
//  Created by Colt Hansen on 10/20/14.
//  Copyright (c) 2014 Colt Hansen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BLCViewController : UIViewController

@property (weak, nonatomic) UITextField *beerPercentTextField;
@property (weak, nonatomic) UILabel *resultLabel;
@property (weak, nonatomic) UISlider *beerCountSlider;

-(void)buttonPressed:(UIButton *)sender;
@end

