//
//  main.m
//  Program 5.7
//
//  Created by rob on 9/10/14.
//  Copyright (c) 2014 rob. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        unsigned int u, v, temp;
        
        NSLog(@"Please type in two nonnegative integers.");
        scanf("%u%u", &u, &v);
        
        while(v != 0){
            temp = u % v;
            u = v;
            v = temp;
        }
        
        NSLog(@"Their greater common divisor is %u", u);
        
    }
    return 0;
}

