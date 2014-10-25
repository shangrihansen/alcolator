//
//  BLCMainMenuViewController.m
//  Alcolator
//
//  Created by Colt Hansen on 10/25/14.
//  Copyright (c) 2014 Colt Hansen. All rights reserved.
//

#import "BLCMainMenuViewController.h"

@interface BLCMainMenuViewController ()

@end

@implementation BLCMainMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"Pick yur poison", @"choose alcolator");
    self.view.backgroundColor = [UIColor colorWithRed:0 green:.349 blue:.498 alpha:1.0];
    
    UIButton *wineButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [wineButton addTarget:self action:@selector(winePressed:) forControlEvents:UIControlEventTouchUpInside];
    wineButton.frame = CGRectMake(80, 180, 100, 50);
    [wineButton setTitle:@"Wine" forState:UIControlStateNormal];
    wineButton.titleLabel.font = [UIFont fontWithName:@"Cochin-BoldItalic" size:22];
    [self.view addSubview:wineButton];
    wineButton.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleBottomMargin;
    
    [wineButton setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    [wineButton setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    
    UIButton *whiskeyButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [whiskeyButton addTarget:self action:@selector(whiskeyPressed:) forControlEvents:UIControlEventTouchUpInside];
    whiskeyButton.frame = CGRectMake(200, 180, 100, 50);
    [whiskeyButton setTitle:@"Whiskey" forState:UIControlStateNormal];
    whiskeyButton.titleLabel.font = [UIFont fontWithName:@"Cochin-BoldItalic" size:22];
    [self.view addSubview:whiskeyButton];
    whiskeyButton.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleBottomMargin;
    
    [whiskeyButton setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    [whiskeyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) winePressed:(UIButton *)sender {
    BLCViewController *wineVC = [[BLCViewController alloc] init];
    [self.navigationController pushViewController:wineVC animated:YES];
}

-(void) whiskeyPressed:(UIButton *)sender {
    BLCWhiskeyViewController *whiskeyVC = [[BLCWhiskeyViewController alloc] init];
    [self.navigationController pushViewController:whiskeyVC animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
