//
//  main.m
//  Program 10.1
//
//  Created by rob on 9/22/14.
//  Copyright (c) 2014 rob. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Fraction *a, *b, *c;
        
        NSLog(@"Fractions allocated: %i", [Fraction count]);
        
        a = [[Fraction allocF] initWith:1 over:3];
        b = [[Fraction allocF] initWith:3 over:7];
        c = [[Fraction allocF] initWith:4 over:8];
        
        NSLog(@"Fractions allocated: %i", [Fraction count]);
        
        [a print];
        [b print];
        [c print];
        
    }
    return 0;
}
