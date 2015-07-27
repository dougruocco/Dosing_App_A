//
//  ViewController_PI.m
//  AliniaDosing_iPad
//
//  Created by Doug Ruocco on 3/30/15.
//  Copyright (c) 2015 Lupin Pharmaceuticals. All rights reserved.
//

#import "ViewController_PI.h"

@interface ViewController_PI ()

@end

@implementation ViewController_PI
@synthesize scrollView, imageView;

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return imageView;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    UIImageView *tempImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Alinia_PI_1.png"]]; self.imageView = tempImageView; [tempImageView release]; scrollView.maximumZoomScale = 3.0; scrollView.minimumZoomScale = 0.6; scrollView.clipsToBounds = YES; scrollView.delegate = self; [scrollView addSubview:imageView];
    
    [self.scrollView setScrollEnabled:YES];
    [self.scrollView setContentSize:(CGSizeMake(768, 4595))];
    [self.scrollView setBackgroundColor:[UIColor blackColor]];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
