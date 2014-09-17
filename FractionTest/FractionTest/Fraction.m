//
//  Fraction.m
//  FractionTest
//
//  Created by rob on 9/17/14.
//  Copyright (c) 2014 rob. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

-(double) convertToNum
{
    if(denominator != 0)
        return (double) numerator / denominator;
    else
        return NAN;
}

-(void) setTo:(int)n over:(int)d
{
    numerator = n;
    denominator = d;
}

// add fraction to the reciever
-(void) add: (Fraction *) f
{
    // to add two fractions:
    // a/b + c/d = ((a*d) + (b*c)) / (b*d)
    
    numerator = numerator * f.denominator + denominator * f.numerator;
    denominator = denominator * f.denominator;
}

@end