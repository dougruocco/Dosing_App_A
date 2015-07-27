//
//  ViewController.h
//  AliniaDosing_iPad
//
//  Created by Doug Ruocco on 7/9/14.
//  Copyright (c) 2014 Lupin Pharmaceuticals. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIScrollViewDelegate>


@property (strong, nonatomic) IBOutlet UIButton *ContinueButton;
- (IBAction)ContinueButton:(id)sender;

@property (weak, nonatomic) IBOutlet UIScrollView *ScrollView_PI;

- (IBAction)PI_Link:(id)sender;
- (IBAction)SafetyButton:(UIButton *)sender;


@end
