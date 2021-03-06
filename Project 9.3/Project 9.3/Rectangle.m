//
//  Rectangle.m
//  Program 8.2
//
//  Created by rob on 9/18/14.
//  Copyright (c) 2014 rob. All rights reserved.
//

#import "Rectangle.h"
#import "XYPoint.h"

@implementation Rectangle
{
    XYPoint *origin;
}
@synthesize width, height;

-(void) setOrigin:(XYPoint *)pt
{
    if(! origin)
        origin = [[XYPoint alloc] init];
    
    origin.x = pt.x;
    origin.y = pt.y;
}

-(XYPoint *) origin
{
    return origin;
}

-(void) setWidth: (float) w andHeight: (float) h
{
    width = w;
    height = h;
}

-(int) area
{
    return width * height;
}

-(int) perimeter
{
    return (width + height) * 2;
}
-(XYPoint *) translate: (XYPoint *) pt
{
    pt.x += 10;
    pt.y += 10;
    
    return pt;
}
@end
