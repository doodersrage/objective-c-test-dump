//
//  Fraction.m
//  FractionTest
//
//  Created by rob on 9/17/14.
//  Copyright (c) 2014 rob. All rights reserved.
//

#import "Fraction.h"

static int gCounter;

@implementation Fraction

@synthesize numerator, denominator, real, imaginary;

-(id) init
{
    return [self initWith:0 over:0];
}

+(Fraction *) allocF{
    extern int gCounter;
    ++gCounter;
    
    return [Fraction alloc];
}

+(int) count{
    extern int gCounter;
    
    return gCounter;
}

-(id) initWith: (int) n over: (int) d{
    self = [super init];
    
    if(self)
        [self setTo: n over: d];
    
    return self;
}

-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

-(void) setReal: (double) a andImaginary: (double) b
{
    real = a;
    imaginary = b;
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
-(Fraction *) add: (Fraction *) f
{
    // to add two fractions:
    // a/b + c/d = ((a*d) + (b*c)) / (b*d)
    
    // result will store the result of the addition
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    [result reduce];
    
    return result;
}

-(void) reduce
{
    int u = numerator;
    int v = denominator;
    int temp;
    
    while(v != 0){
        temp = u % v;
        u = v;
        v = temp;
    }
    
    numerator /= u;
    denominator /= u;
}

@end
