//
//  BCSearchViewController.h
//  MTG App
//
//  Created by Brian Corbin on 9/10/13.
//  Copyright (c) 2013 Brian Corbin. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BCSearchViewController;
@protocol BCSearchViewControllerDelegate <NSObject>
@end

@interface BCSearchViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIScrollView *screenScrollView;
- (IBAction)btnSet:(id)sender;
- (IBAction)btnType:(id)sender;
- (IBAction)btnColor:(id)sender;
- (IBAction)btnOther:(id)sender;
- (IBAction)btnBack:(id)sender;

@property (weak, nonatomic)id<BCSearchViewControllerDelegate>delegate;

@end
