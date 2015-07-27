//
//  ViewController.m
//  AliniaDosing_iPad
//
//  Created by Doug Ruocco on 7/9/14.
//  Copyright (c) 2014 Lupin Pharmaceuticals. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self.ScrollView_PI setScrollEnabled:YES];
    [self.ScrollView_PI setContentSize:(CGSizeMake(728, 787))];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ContinueButton:(id)sender {
}
- (IBAction)PI_Link:(id)sender
{
    //[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://64.196.99.183:8086"]];
}

- (IBAction)SafetyButton:(UIButton *)sender
{
    //[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://64.196.99.183:8085"]];
}
@end
