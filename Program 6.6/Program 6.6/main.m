//
//  main.m
//  Program 6.6
//
//  Created by Robert McDowell on 9/13/14.
//  Copyright (c) 2014 Rob. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int number, sign;
        
        NSLog(@"Please type in a number: ");
        scanf("%i", &number);
        
        if(number < 0)
            sign = -1;
        else if ( number == 0 )
            sign = 0;
        else // Must be positive
            sign = 1;
        
        NSLog(@"Sign = %i", sign);
        
    }
    return 0;
}

