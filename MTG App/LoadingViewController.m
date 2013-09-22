//
//  LoadingViewController.m
//  MTG App
//
//  Created by Brian Corbin on 9/10/13.
//  Copyright (c) 2013 Brian Corbin. All rights reserved.
//

#import "LoadingViewController.h"

@interface LoadingViewController ()

@end

@implementation LoadingViewController

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
    animationImageView.animationImages = [NSArray arrayWithObjects:
                                          [UIImage imageNamed:@"load1.png"],
                                          [UIImage imageNamed:@"load2.png"],
                                          [UIImage imageNamed:@"load3.png"],
                                          [UIImage imageNamed:@"load4.png"],
                                          [UIImage imageNamed:@"load5.png"], nil];
    animationImageView.animationRepeatCount = 3;
    animationImageView.animationDuration = 3;
    [animationImageView startAnimating];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)delay1
{
    
}
-(void)delay2
{
    
}
-(void)delay3
{
    
}

@end
