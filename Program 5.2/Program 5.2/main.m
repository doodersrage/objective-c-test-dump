//
//  main.m
//  Program 5.2
//
//  Created by rob on 9/10/14.
//  Copyright (c) 2014 rob. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int n, triangularNumber;
        
        triangularNumber = 0;
        
        for(n = 1; n <= 200; n = n + 1)
            triangularNumber += n;
        
        NSLog(@"The 200th triangular number is %i", triangularNumber);
        
    }
    return 0;
}

