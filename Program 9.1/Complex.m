//
//  Complex.m
//  Program 9.1
//
//  Created by rob on 9/19/14.
//  Copyright (c) 2014 rob. All rights reserved.
//

#import "Complex.h"

@implementation Complex

@synthesize real, imaginary;

-(void) print
{
    NSLog(@" %g + %gi ", real, imaginary);
}
-(void) setReal: (double) a andImaginary: (double) b
{
    real = a;
    imaginary = b;
}
-(Complex *) add: (Complex *) f
{
    Complex *result = [[Complex alloc] init];
    
    result.real = real + f.real;
    result.imaginary = imaginary + f.imaginary;
    
    return result;
}
@end
