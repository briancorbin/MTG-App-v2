//
//  BCSearchViewController.h
//  MTG App
//
//  Created by Brian Corbin on 9/10/13.
//  Copyright (c) 2013 Brian Corbin. All rights reserved.
//

#import <UIKit/UIKit.h>
#include "BCMagicCard.h"
#include "BCLoadData.h"

@class BCSearchViewController;
@protocol BCSearchViewControllerDelegate <NSObject>
@end

@interface BCSearchViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *screenScrollView;
@property (nonatomic, strong) NSArray *cardLibrary;
@property (nonatomic, strong) NSMutableArray *searchingLibrary;
@property (weak, nonatomic) IBOutlet UITableView *myTableView;
@property BOOL isSearching;
@property (weak, nonatomic) IBOutlet UISearchBar *mySearchBar;
- (IBAction)btnSet:(id)sender;
- (IBAction)btnType:(id)sender;
- (IBAction)btnColor:(id)sender;
- (IBAction)btnOther:(id)sender;
- (IBAction)btnBack:(id)sender;

@property (weak, nonatomic)id<BCSearchViewControllerDelegate>delegate;

@end
