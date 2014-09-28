//
//  BNRContainer.h
//  RandomItems
//
//  Created by Robert McDowell on 9/28/14.
//  Copyright (c) 2014 Studio Center. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

@interface BNRContainer : BNRItem
{
    NSMutableArray *_subitems;
    NSString *_containerName;
}

- (void)setContainerName:(NSString *)str;
- (NSString *)containerName;

- (NSArray *)items;

- (void)addItem:(BNRItem *)item;
- (BNRItem *)itemAtIndex:(int)index;

- (int)valueInDollars;

@end
