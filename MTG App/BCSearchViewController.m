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

@synthesize screenScrollView, myTableView, cardLibrary;

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
    screenScrollView.contentSize = CGSizeMake(320, 1048);
    screenScrollView.scrollEnabled = YES;
    
    myTableView.backgroundColor = [UIColor clearColor];
    [myTableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    
    BCLoadData *loadData = [[BCLoadData alloc]init];
    cardLibrary = [loadData loadCardData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [cardLibrary count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CardCell"];
    UILabel *labelCardName =(UILabel *)[cell viewWithTag:1];
    UILabel *labelCardType =(UILabel *)[cell viewWithTag:2];
    //UIImageView *imageViewSet =(UIImageView *)[cell viewWithTag:3];
    
    if(cell == nil) cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CardCell"];
    cell.backgroundColor = [UIColor clearColor];
    BCMagicCard *tempMC = (BCMagicCard *)[cardLibrary objectAtIndex:indexPath.row];
    labelCardName.text = tempMC.name;
    labelCardType.text = tempMC.type;
    return cell;
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
