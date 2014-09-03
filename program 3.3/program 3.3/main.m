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
        
        Fraction *frac1 = [[Fraction alloc] init];
        Fraction *frac2 = [[Fraction alloc] init];
        
        // Set 1st Fraction to 2/3
        [frac1 setNumerator:2];
        [frac1 setDenominator:3];
        
        // set second fraction to 3/7
        [frac2 setNumerator:3];
        [frac2 setDenominator:7];
        
        // display the fraction using the print method
        NSLog(@"First fraction is:");
        [frac1 print];
        
        NSLog(@"Second fraction is:");
        [frac2 print];
        
    }
    return 0;
}

