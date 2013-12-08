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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnCloseTouched:(id)sender {
    [self dismissViewControllerAnimated:NO completion:NULL];
}
@end
