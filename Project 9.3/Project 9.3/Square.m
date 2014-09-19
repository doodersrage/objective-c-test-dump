//
//  Square.m
//  Program 8.2
//
//  Created by rob on 9/18/14.
//  Copyright (c) 2014 rob. All rights reserved.
//

#import "Square.h"

@implementation Square
-(void) setSide:(int)s
{
    [self setWidth:s andHeight:s];
}
-(int) side
{
    return self.width;
}
@end
