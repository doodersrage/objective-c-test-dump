//
//  main.m
//  program 4.3 unary operators
//
//  Created by rob on 9/4/14.
//  Copyright (c) 2014 rob. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        int a = 25;
        int b = 2;
        float c = 25.0;
        float d = 2.0;
        
        NSLog(@"6 + a / 5 * b = %i", 6 + a / 5 * b);
        NSLog(@"a / b * b = %i", a / b * b);
        NSLog(@"c / d * d = %f", c / d * d);
        NSLog(@"-a = %i", -a);
        
    }
    return 0;
}

