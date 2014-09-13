//
//  main.m
//  Program 6.1
//
//  Created by Robert McDowell on 9/13/14.
//  Copyright (c) 2014 Rob. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int number;
        
        NSLog(@"Type in your number: ");
        scanf("%i", &number);
        
        if(number < 0)
            number = -number;
        
        NSLog(@"The absolute value is %i", number);
        
    }
    return 0;
}

