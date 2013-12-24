//
//  ViewImageViewController.h
//  ViewImage
//
//  Created by masuimasanori on 2013/12/09.
//  Copyright (c) 2013年 masanori. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ComputingDisplayDatas.h"

@interface ViewImageViewController : UIViewController
{
    ComputingDisplayDatas *cmpDisplayDatas;
    BOOL flagTab01;
    BOOL flagBlink;
}
@property (weak, nonatomic) IBOutlet UIImageView *imgFrame;
@property (weak, nonatomic) IBOutlet UIButton *btnImage01;
- (IBAction)btnImage01Touched:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *btnTab01;

- (IBAction)btnTab01Touched:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *lblBlink;
@property (weak, nonatomic) IBOutlet UILabel *lblNowsTime;



@property BOOL flagTab01;
@property BOOL flagBlink;

@end
