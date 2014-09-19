//
//  GraphicObject.h
//  Program 8.2
//
//  Created by rob on 9/19/14.
//  Copyright (c) 2014 rob. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GraphicObject : NSObject
{
    int fillColor;
    BOOL filled;
    int lineColor;
}
-(void) setFillColor: (int) fc;
-(int) getFillColor;
-(void) setFilled: (int) fld;
-(BOOL) getFilled;
-(void) setLineColor: (int) lc;
-(int) getLineColor;
@end
