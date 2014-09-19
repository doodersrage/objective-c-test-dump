//
//  main.m
//  Program 9.4
//
//  Created by rob on 9/19/14.
//  Copyright (c) 2014 rob. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *f = [[Fraction alloc] init];
        @try{
            [f noSuchMethod];
        }
        @catch (NSException *exception){
            NSLog(@"Caught %@%@", [exception name], [exception reason]);
        }
        NSLog(@"Execution continues!");
    }
    return 0;
}
