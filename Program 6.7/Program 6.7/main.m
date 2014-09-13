//
//  main.m
//  Program 6.7
//
//  Created by Robert McDowell on 9/13/14.
//  Copyright (c) 2014 Rob. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        char c;
        
        NSLog(@"Enter a single character:");
        scanf(" %c", &c);
        
        if( (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') )
            NSLog(@"It's an alphabetic character.");
        else if ( c >= '0' && c <= '9' )
            NSLog(@"It's a digit.");
        else
            NSLog(@"It's a spcial character.");
        
    }
    return 0;
}

