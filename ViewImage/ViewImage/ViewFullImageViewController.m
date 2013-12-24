//
//  ViewFullImageViewController.m
//  ViewImage
//
//  Created by masuimasanori on 2013/12/09.
//  Copyright (c) 2013年 masanori. All rights reserved.
//

#import "ViewFullImageViewController.h"

@interface ViewFullImageViewController ()

@end

@implementation ViewFullImageViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	_imgFullView.image = [UIImage imageNamed:@"fullImage01.jpg"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)btnCloseTouched:(id)sender {
    [self dismissViewControllerAnimated:NO completion:NULL];
}


@end
