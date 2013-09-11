//
//  BCSearchViewController.m
//  MTG App
//
//  Created by Brian Corbin on 9/10/13.
//  Copyright (c) 2013 Brian Corbin. All rights reserved.
//

#import "BCSearchViewController.h"

@interface BCSearchViewController ()

@end

@implementation BCSearchViewController

@synthesize screenScrollView;

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
    screenScrollView.contentSize = CGSizeMake(320, 832);
    screenScrollView.scrollEnabled = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnSet:(id)sender {
}

- (IBAction)btnType:(id)sender {
}

- (IBAction)btnColor:(id)sender {
}

- (IBAction)btnOther:(id)sender {
}

- (IBAction)btnBack:(id)sender
{
    [self dismissViewControllerAnimated:NO completion:nil];
}
@end
