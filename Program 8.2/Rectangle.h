//
//  Rectangle.h
//  Program 8.2
//
//  Created by rob on 9/18/14.
//  Copyright (c) 2014 rob. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GraphicObject.h"
#import "XYPoint.h"

@interface Rectangle : GraphicObject

@property int width, height;

-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(void) setWidth: (float) w andHeight: (float) h;
-(int) area;
-(int) perimeter;
-(XYPoint *) translate: (XYPoint *) pt;
@end
