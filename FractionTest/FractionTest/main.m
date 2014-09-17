//
//  main.m
//  FractionTest
//
//  Created by rob on 9/17/14.
//  Copyright (c) 2014 rob. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Fraction *myFraction = [[Fraction alloc] init];
        
        [myFraction setTo:100 over:200];
        [myFraction print];
        
        // set fraction to 1/3
        
        [myFraction setNumerator: 1];
        [myFraction setDenominator: 3];
        
        // display the fraction
        
        NSLog(@"The value of myFraction is:");
        [myFraction print];
        
    }
    return 0;
}

