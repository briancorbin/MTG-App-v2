//
//  BCInitialViewController.h
//  MTG App
//
//  Created by Brian Corbin on 9/5/13.
//  Copyright (c) 2013 Brian Corbin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "MyLoginViewController.h"
#import "MySignUpViewController.h"
#import "BCSearchViewController.h"
#import "LoadingViewController.h"

@interface BCInitialViewController : UIViewController <PFLogInViewControllerDelegate, PFSignUpViewControllerDelegate, BCSearchViewControllerDelegate>
- (IBAction)actionLogout:(id)sender;
- (IBAction)btnSearch:(id)sender;
- (IBAction)btnPlay:(id)sender;

@end
