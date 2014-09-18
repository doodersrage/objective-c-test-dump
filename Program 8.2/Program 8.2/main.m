//
//  main.m
//  Program 8.2
//
//  Created by rob on 9/18/14.
//  Copyright (c) 2014 rob. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Rectangle *myRect = [[Rectangle alloc] init];
        
        [myRect setWidth:5 andHeight: 8];
        
        NSLog(@"Rectangle: w = %i, h = %i", myRect.width, myRect.height);
        NSLog(@"Area = %i, Perimeter = %i", [myRect area], [myRect perimeter]);
        
    }
    return 0;
}

