//
//  main.m
//  RandomItems
//
//  Created by Robert McDowell on 9/27/14.
//  Copyright (c) 2014 Studio Center. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "BNRContainer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Create a mutable array object, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        // Send the message addObject: to the NSMutableArray pointed to
        // by the variable items, passing a string each time
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        // Send another message, insertObject:atIndex:, to that same array object
        [items insertObject:@"Zero" atIndex:0];
        
        // For every item in the items array ...
        for (NSString *item in items) {
            // Log the description of item
            NSLog(@"%@", item);
        }
        
        for (int i = 0; i < 10; i++) {
            BNRItem *item = [BNRItem randomItem];
            [items addObject:item];
        }
        
        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }
        
        BNRContainer *container = [[BNRContainer alloc] init];
        [container setContainerName:@"Test container"];
        [container addItem:[BNRItem randomItem]];
        [container addItem:[BNRItem randomItem]];
        
        BNRContainer *superContainer = [[BNRContainer alloc] init];
        [superContainer setContainerName:@"Super Container"];
        [superContainer addItem:container];
        [superContainer addItem:[BNRItem randomItem]];
        
        BNRContainer *superSuperContainer = [[BNRContainer alloc] init];
        [superSuperContainer setContainerName:@"Super Super Container"];
        [superSuperContainer addItem:superContainer];
        
        NSLog(@"Container: %@", container);
        NSLog(@"Super Container: %@", superContainer);
        NSLog(@"Super Super Container: %@", superSuperContainer);
        
        // Destroy the mutable array object
        items = nil;
        
    }
    return 0;
}
