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
        
        Fraction *a, *b;
        
        a = [[Fraction alloc] initWith:1 over:3];
        b = [[Fraction alloc] initWith:3 over:7];
        
        [a print];
        [b print];
        
    }
    return 0;
}
