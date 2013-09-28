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

@synthesize screenScrollView, myTableView, cardLibrary, searchingLibrary, mySearchBar, isSearching;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (BOOL)prefersStatusBarHidden{return YES;}

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
    if(!isSearching) return [cardLibrary count];
    else return [searchingLibrary count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CardCell"];
    UILabel *labelCardName =(UILabel *)[cell viewWithTag:1];
    UILabel *labelCardType =(UILabel *)[cell viewWithTag:2];
    UIImageView *imageViewCardSet =(UIImageView *)[cell viewWithTag:3];
    if(cell == nil) cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CardCell"];
    cell.backgroundColor = [UIColor clearColor];
    BCMagicCard *tempMC;
    if(!isSearching) tempMC = (BCMagicCard *)[cardLibrary objectAtIndex:indexPath.row];
    else tempMC = (BCMagicCard *)[searchingLibrary objectAtIndex:indexPath.row];
    labelCardName.text = tempMC.name;
    labelCardType.text = tempMC.type;
    imageViewCardSet.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@_%@", tempMC.set, tempMC.rarity]];

    NSMutableArray *manaSymbols = [[NSMutableArray alloc]initWithArray:[tempMC.mc componentsSeparatedByString:@"}"]];
    [manaSymbols removeLastObject]; //gets rid of "" at the end of the array
    for(int i=0; i<10; i++)
    {
        NSString *manaSymbol;
        if(i<[manaSymbols count]) manaSymbol = [[manaSymbols objectAtIndex:i] stringByReplacingOccurrencesOfString:@"{" withString:@""];
        UIImageView *imgManaSymbol = (UIImageView *)[cell viewWithTag:i+4];
        imgManaSymbol.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.png", manaSymbol]];
        if(i >= [manaSymbols count]) imgManaSymbol.image = nil;
    }
    return cell;
}

-(void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    if(searchText.length == 0)
    {
        isSearching = NO;
    }
    else
    {
        isSearching = YES;
        searchingLibrary = [[NSMutableArray alloc]init];
        for(BCMagicCard *tempMC in cardLibrary)
        {
            NSRange MCNameRange = [tempMC.name rangeOfString:searchText options:NSCaseInsensitiveSearch];
            if(MCNameRange.location != NSNotFound)
            {
                [searchingLibrary addObject:tempMC];
            }
        }
    }
    [myTableView reloadData];
}

-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    [mySearchBar resignFirstResponder];
}

-(void)searchBarCancelButtonClicked:(UISearchBar *)searchBar
{
    isSearching = NO;
    mySearchBar.text = @"";
    [myTableView reloadData];
    [mySearchBar resignFirstResponder];
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
