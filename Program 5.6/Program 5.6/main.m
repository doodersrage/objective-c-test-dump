//
//  main.m
//  Program 5.6
//
//  Created by rob on 9/10/14.
//  Copyright (c) 2014 rob. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int count = 1;
        
        while(count <= 5){
            NSLog(@"%i", count);
            ++count;
        }
        
    }
    return 0;
}

