//
//  BLCWhiskeyViewController.m
//  Alcolator
//
//  Created by Colt Hansen on 10/23/14.
//  Copyright (c) 2014 Colt Hansen. All rights reserved.
//

#import "BLCWhiskeyViewController.h"

@interface BLCWhiskeyViewController ()

@end

@implementation BLCWhiskeyViewController

- (instancetype) init {
    self = [super init];
    if (self) {
        self.title = NSLocalizedString(@"Whiskey", nil);
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0 green:.349 blue:.498 alpha:1.0];
}

- (void)sliderValueDidChange:(UISlider *)sender {
    NSLog(@"Slider value changed to %f", sender.value);
    [self.beerPercentTextField resignFirstResponder];
    [self.tabBarItem setBadgeValue:[NSString stringWithFormat:@"%d", (int) sender.value]];
}

- (void)buttonPressed:(UIButton *)sender;
{
    [self.beerPercentTextField resignFirstResponder];
    
    int numberOfBeers = self.beerCountSlider.value;
    int ouncesInOneBeerGlass = 12;
    
    float alcoholPercentageOfBeer = [self.beerPercentTextField.text floatValue] / 100;
    float ouncesOfAlcoholPerBeer = ouncesInOneBeerGlass * alcoholPercentageOfBeer;
    float ouncesOfAlcoholTotal = ouncesOfAlcoholPerBeer * numberOfBeers;
    
    float ouncesInOneWhiskeyGlass = 1;
    float alcoholPercentageOfWhiskey = 0.4;
    
    float ouncesOfAlcoholPerWhiskeyGlass = ouncesInOneWhiskeyGlass * alcoholPercentageOfWhiskey;
    float numberOfWhiskeyGlassesForEquivalentAlcoholAmount = ouncesOfAlcoholTotal / ouncesOfAlcoholPerWhiskeyGlass;
    
    NSString *beerText;
    
    if (numberOfBeers == 1) {
        beerText = NSLocalizedString(@"beer", @"singular beer");
    } else {
        beerText = NSLocalizedString(@"beers", @"plural of beer");
    }
    
    NSString *whiskeyText;
    
    if (numberOfWhiskeyGlassesForEquivalentAlcoholAmount <= 1) {
        whiskeyText = NSLocalizedString(@"shot", @"singular shot");
    } else {
        whiskeyText = NSLocalizedString(@"shots", @"pluaral of shot");
    }
    
    NSString *resultText = [NSString stringWithFormat:NSLocalizedString(@"%d %@ contains as much alcohol as %.lf %@ of whiskey.", nil), numberOfBeers, beerText, numberOfWhiskeyGlassesForEquivalentAlcoholAmount, whiskeyText];
    self.resultLabel.text = resultText;
}

@end
