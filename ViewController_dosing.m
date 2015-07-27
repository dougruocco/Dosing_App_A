//
//  ViewController_dosing.m
//  AliniaDosing_iPad
//
//  Created by Doug Ruocco on 7/9/14.
//  Copyright (c) 2014 Lupin Pharmaceuticals. All rights reserved.
//

#import "ViewController_dosing.h"

@interface ViewController_dosing ()

@end

@implementation ViewController_dosing
@synthesize dosingImage;
@synthesize dosingPicker;
@synthesize dosing = _dosing;

/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/
 
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _dosing = [[NSArray alloc] initWithObjects:@"1-3 years",@"4-11 years",@"12+ years", nil];
    _pickerViewContainer.frame = CGRectMake(0, 2000, 768, 216);
    dosingPicker.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)showButton:(id)sender
{
    _pickerViewContainer.hidden = NO;
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.5];
    _pickerViewContainer.frame = CGRectMake(0, 529,768,146);
    [UIView commitAnimations];
    [self.scrollView_dosing setScrollEnabled:NO];
    [self.scrollView_dosing setContentOffset:CGPointZero animated:YES];
}

- (IBAction)PI_Link:(id)sender
{
    //[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://64.196.99.183:8086"]];
    //[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.accessdata.fda.gov/drugsatfda_docs/label/2005/021818lbl.pdf"]];
    //[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://jimbo.trialcard.com/Coupon_AliniaCoupon/AliniaCoupon/Default.aspx"]];
}

- (IBAction)EmailButton:(id)sender
{
    MFMailComposeViewController *mailcontroller = [[MFMailComposeViewController alloc] init];
    [mailcontroller setMailComposeDelegate:self];
    NSString *email = NULL;
    NSString *messagebody = [NSString stringWithFormat:@"Thank you for your interest in the Alinia® (nitazoxanide) for Oral Suspension 100 mg/5 mL Dosing App. We have provided you with two important links:<br/><br/>The first set of links will forward you to the iTunes App Store where you can download the appropriate Alinia® Dosing App for your device:<br/><a href=https://apl.lupinusa.com/aliniacomingsoon.htm>Click to download the Alinia® Dosing App for the iPad</a>""<br/><a href=https://apl.lupinusa.com/aliniacomingsoon.htm>Click to download the Alinia® Dosing App for the iPhone 5/6</a><br/><a href=https://apl.lupinusa.com/aliniacomingsoon.htm>Click to download the Alinia® Dosing App for the iPhone 4</a><br/><br/>The link below directs you to a unique Alinia® Suspension $25 Co-pay Savings Card for printing:<br/><a href=http://test.trialcard.com/Coupon_Alinia/AliniaCoupon>Click to get Alinia® $25 Co-pay Savings Card</a><br/><br/> Sincerely,<br/>Lupin Pharmaceuticals, Inc."];
    NSArray *toAddress = [[NSArray alloc] initWithObjects:email, nil];
    [mailcontroller setToRecipients:toAddress];
    [mailcontroller setSubject:@"Download the Alinia® Dosing App!"];
    [mailcontroller setMessageBody:messagebody isHTML:YES];
    
    //Present mail view controller on screen
    [self presentViewController:mailcontroller animated:YES completion:NULL];
}

- (IBAction)safetyButton:(id)sender
{
    //[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://64.196.99.183:8085"]];
}

- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _dosing.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [_dosing objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    //Create the UIImage objects
    UIImage * firstImage = [UIImage imageNamed:@"dosing_1.png"];
    UIImage * secondImage = [UIImage imageNamed:@"dosing_2.png"];
    UIImage * thirdImage = [UIImage imageNamed:@"dosing_3.png"];
    _pickerViewContainer.hidden = YES;
    [self.scrollView_dosing setScrollEnabled:NO];
    [self.scrollView_dosing setContentSize:(CGSizeMake(768, 1036))];
    
    switch (row) {
        case 0:
            dosingImage.image = firstImage;
            break;
        case 1:
            dosingImage.image = secondImage;
            break;
        case 2:
            dosingImage.image = thirdImage;
            break;
        default:
            dosingImage.image = firstImage;
            break;
    }        
}




@end
