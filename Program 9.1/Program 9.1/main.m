//
//  main.m
//  Program 9.1
//
//  Created by rob on 9/19/14.
//  Copyright (c) 2014 rob. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Complex.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        id dataValue;
        Fraction *f1 = [[Fraction alloc] init];
        Fraction *f2 = [[Fraction alloc] init];
        Complex *c1 = [[Complex alloc] init];
        Complex *c2 = [[Complex alloc] init];
        
        [f1 setTo:1 over: 10];
        [f2 setTo:2 over: 15];
        
        [c1 setReal:18.0 andImaginary:2.5];
        [c1 setReal:-5.0 andImaginary:3.2];
        
        // add and print 2 complex numbers
        
        [c1 print]; NSLog(@"      +"); [c2 print];
        NSLog(@"----------");
        dataValue = [c1 add: c2];
        [dataValue print];
        NSLog(@"\n");
        
        // add and print
        [f1 print]; NSLog(@"     +"); [f2 print];
        NSLog(@"----");
        dataValue = [f1 add: f2];
        [dataValue print];
        
    }
    return 0;
}
