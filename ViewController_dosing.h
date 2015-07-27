//
//  ViewController_dosing.h
//  AliniaDosing_iPad
//
//  Created by Doug Ruocco on 7/9/14.
//  Copyright (c) 2014 Lupin Pharmaceuticals. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface ViewController_dosing : UIViewController

<UIPickerViewDataSource, UIPickerViewDelegate, MFMailComposeViewControllerDelegate>

@property (strong, nonatomic) IBOutlet UIPickerView *dosingPicker;

@property (strong, nonatomic) IBOutlet UIImageView *dosingImage;

@property (strong, nonatomic) NSArray * dosing;

@property (strong, nonatomic) IBOutlet UIView *pickerViewContainer;

- (IBAction)showButton:(id)sender;
- (IBAction)PI_Link:(id)sender;
- (IBAction)EmailButton:(id)sender;
- (IBAction)safetyButton:(id)sender;

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView_dosing;

@end
