//
//  main.m
//  Program 6.2
//
//  Created by Robert McDowell on 9/13/14.
//  Copyright (c) 2014 Rob. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction: NSObject

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;
-(double) convertToNum;
@end

@implementation Fraction
{
    int numerator;
    int denominator;
}
-(void) print
{
    NSLog(@" %i/%i ", numerator, denominator);
}
-(void) setNumerator:(int)n
{
    numerator = n;
}
-(void) setDenominator:(int)d
{
    denominator = d;
}
-(int) numerator
{
    return numerator;
}
-(int)denominator
{
    return denominator;
}
-(double) convertToNum
{
    if(denominator != 0)
        return (double) numerator / denominator;
    else
        return NAN;
}
@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        
        [aFraction setNumerator:1]; // 1st fraction is 1/4
        [aFraction setDenominator:4];
        
        [aFraction print];
        NSLog(@" =");
        NSLog(@"%g", [aFraction convertToNum]);
        
        [bFraction print]; // never assigned a value
        NSLog(@" =");
        NSLog(@"%g", [bFraction convertToNum]);
        
    }
    return 0;
}

