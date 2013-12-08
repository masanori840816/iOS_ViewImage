//
//  ViewImageViewController.h
//  ViewImage
//
//  Created by masuimasanori on 2013/12/09.
//  Copyright (c) 2013年 masanori. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewImageViewController : UIViewController
{
    BOOL flagTab01;
}
@property (weak, nonatomic) IBOutlet UIImageView *imgFrame;
@property (weak, nonatomic) IBOutlet UIButton *btnImage01;
- (IBAction)btnImage01Touched:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *btnTab01;

- (IBAction)btnTab01Touched:(id)sender;

@property BOOL flagTab01;


@end
