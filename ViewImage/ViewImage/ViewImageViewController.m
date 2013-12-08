//
//  ViewImageViewController.m
//  ViewImage
//
//  Created by masuimasanori on 2013/12/09.
//  Copyright (c) 2013年 masanori. All rights reserved.
//

#import "ViewImageViewController.h"

@interface ViewImageViewController ()

@end

@implementation ViewImageViewController
@synthesize flagTab01;

- (void)viewDidLoad
{
    [super viewDidLoad];
	flagTab01 = YES;
    
    [self setTabButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnImage01Touched:(id)sender {
    UIStoryboard *sbdViewFullImage = [UIStoryboard storyboardWithName:@"ViewFullImage" bundle:nil];
    UIViewController * vclViewFullImage = [sbdViewFullImage instantiateInitialViewController];
    [self presentViewController: vclViewFullImage animated:NO completion: nil];
}
- (IBAction)btnTab01Touched:(id)sender {
    if(flagTab01){
        flagTab01 = NO;
    }else{
        flagTab01 = YES;
    }
    [self setTabButton];
}
- (void)setTabButton
{
    @try{
        UIImage *imgTabButton;
        if(flagTab01){
            imgTabButton = [UIImage imageNamed:@"tab01_on.jpg"];
        }else{
            imgTabButton = [UIImage imageNamed:@"tab01_off.jpg"];
        }
        [_btnTab01 setBackgroundImage:imgTabButton forState:UIControlStateNormal];
    }
    @catch(NSException *ex){
        NSLog(@"%@",(NSString *)ex);
    }
}

@end
