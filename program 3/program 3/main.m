//
//  main.m
//  program 3
//
//  Created by rob on 9/3/14.
//  Copyright (c) 2014 rob. All rights reserved.
//

#import <Foundation/Foundation.h>

//--- @interface section ----

@interface Fraction: NSObject

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;

@end

//-- @implementation section ---

@implementation Fraction
{
    int numerator;
    int denomenator;
}
-(void) print
{
    NSLog(@"%i/%i",numerator,denomenator);
}
-(void)setNumerator:(int)n
{
    numerator = n;
}
-(void)setDenominator:(int)d
{
    denomenator = d;
}
@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Fraction *myFraction;
        
        // Create an instance of a fraction
        myFraction = [Fraction alloc];
        myFraction = [myFraction init];
        
        // Set Fraction to 1/3
        [myFraction setNumerator:1];
        [myFraction setDenominator:3];
        
        // display the fraction using the print method
        NSLog(@"The value of myFraction is:");
        [myFraction print];
        
    }
    return 0;
}

