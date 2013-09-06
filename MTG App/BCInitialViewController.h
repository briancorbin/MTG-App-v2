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

@interface BCInitialViewController : UIViewController <PFLogInViewControllerDelegate, PFSignUpViewControllerDelegate>
- (IBAction)actionLogout:(id)sender;

@end
