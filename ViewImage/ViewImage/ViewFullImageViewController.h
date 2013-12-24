//
//  ViewFullImageViewController.h
//  ViewImage
//
//  Created by masuimasanori on 2013/12/09.
//  Copyright (c) 2013年 masanori. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewFullImageViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imgFrame;
@property (weak, nonatomic) IBOutlet UIButton *btnClose;
- (IBAction)btnCloseTouched:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *imgFullView;

@end
