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
@synthesize flagBlink;

- (void)viewDidLoad
{
    [super viewDidLoad];
	flagTab01 = YES;
    flagBlink = YES;
    cmpDisplayDatas = [[ComputingDisplayDatas alloc]init];
    
    [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(displayClock:) userInfo:nil repeats:YES];
    [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(blinkLblBlink:) userInfo:nil repeats:YES];
    
    [self setTabButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
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
- (void)displayClock:(NSTimer *)timer
{
    // 1秒ごとに現在時刻を表示
    self.lblNowsTime.text = [cmpDisplayDatas getTimeNow];
}
- (void)blinkLblBlink:(NSTimer *)timer
{
    // 一定のタイミングでラベルの色を切り替え
    if (flagBlink){
        [self.lblBlink setTextColor:[UIColor redColor]];
        flagBlink = NO;
    }else{
        [self.lblBlink setTextColor:[UIColor blackColor]];
        flagBlink = YES;
    }
}
@end
