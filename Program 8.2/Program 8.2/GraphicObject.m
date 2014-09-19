//
//  GraphicObject.m
//  Program 8.2
//
//  Created by rob on 9/19/14.
//  Copyright (c) 2014 rob. All rights reserved.
//

#import "GraphicObject.h"

@implementation GraphicObject
-(void) setFillColor: (int) fc
{
    fillColor = fc;
}
-(int) getFillColor{
    return fillColor;
}
-(void) setFilled: (int) fld
{
    filled = fld;
}
-(BOOL) getFilled
{
    return filled;
}
-(void) setLineColor: (int) lc
{
    lineColor = lc;
}
-(int) getLineColor
{
    return lineColor;
}
@end
