//
//  BCLoadData.h
//  MTG App
//
//  Created by Brian Corbin on 9/18/13.
//  Copyright (c) 2013 Brian Corbin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BCLoadData : NSObject

@property (nonatomic, strong) NSMutableArray *cardLibrary;

-(NSArray *)loadCardData;
@end
