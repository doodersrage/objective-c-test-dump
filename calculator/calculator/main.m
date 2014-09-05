//
//  main.m
//  calculator
//
//  Created by rob on 9/5/14.
//  Copyright (c) 2014 rob. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator: NSObject

// accumulator methods
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;

// arithmatic methods
-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;
@end

@implementation Calculator
{
    double accumulator;
}
-(void) setAccumulator:(double)value
{
    accumulator = value;
}
-(void) clear
{
    accumulator = 0;
}
-(double) accumulator
{
    return accumulator;
}
-(void) add: (double) value
{
    accumulator += value;
}
-(void) subtract:(double)value
{
    accumulator -= value;
}
-(void) multiply:(double)value
{
    accumulator *= value;
}
-(void) divide:(double)value
{
    accumulator /= value;
}
@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Calculator *deskCalc = [[Calculator alloc] init];
        
        [deskCalc setAccumulator:100.0];
        [deskCalc add: 200.];
        [deskCalc divide:15.0];
        [deskCalc subtract:10.00];
        [deskCalc multiply:5];
        NSLog(@"The result is %g", [deskCalc accumulator]);
        
    }
    return 0;
}

