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
-(int) numerator;
-(int) denominator;

@end

//-- @implementation section ---

@implementation Fraction
{
    int numerator;
    int denominator;
}
-(void) print
{
    NSLog(@"%i/%i",numerator,denominator);
}
-(void)setNumerator:(int)n
{
    numerator = n;
}
-(void)setDenominator:(int)d
{
    denominator = d;
}
-(int) numerator{
    return numerator;
}
-(int) denominator{
    return denominator;
}
@end

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        Fraction *myFraction = [[Fraction alloc] init];
        
        // Set 1st Fraction to 1/3
        [myFraction setNumerator:1];
        [myFraction setDenominator:3];
        
        // display the fraction using the print method
        NSLog(@"The value of myFraction is: %i/%i", [myFraction numerator], [myFraction denominator]);
        
    }
    return 0;
}

