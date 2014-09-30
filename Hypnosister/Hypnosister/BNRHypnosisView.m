//
//  BNRHypnosisView.m
//  Hypnosister
//
//  Created by Robert McDowell on 9/29/14.
//  Copyright (c) 2014 Studio Center. All rights reserved.
//

#import "BNRHypnosisView.h"

@implementation BNRHypnosisView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // All BNRHypnosisViews start with a clear background color
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGRect bounds = self.bounds;
    CGContextRef currentContext = UIGraphicsGetCurrentContext();

    
    // Figure out the center of the bounds rectangle
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    // The largest circle will circumscribe the view
    float maxRadius = hypot(bounds.size.width, bounds.size.height) / 2.0;
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    
    // Add an arc to the path at center, with radius of radius,
    // from 0 to 2*PI radians (a circle)
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20) {
        
        [path moveToPoint:CGPointMake(center.x + currentRadius, center.y)];
        
        [path addArcWithCenter:center
                        radius:currentRadius // Note this is currentRadius!
                    startAngle:0.0
                      endAngle:M_PI * 2.0
                     clockwise:YES];
        
    }
    
    // configure line width to 10 points
    path.lineWidth = 10;
    
    // Configure the drawing color to light gray
    [[UIColor lightGrayColor] setStroke];
    
    // Draw the line!
    [path stroke];

    CGRect imageRect = CGRectMake(45, 170, 234, 88);
    
    CGContextSaveGState(currentContext);
    
    UIBezierPath *trianglePath = [[UIBezierPath alloc] init];
    [trianglePath moveToPoint:CGPointMake(center.x, imageRect.origin.y)];
    [trianglePath addLineToPoint:CGPointMake(imageRect.origin.x, imageRect.origin.y + imageRect.size.height)];
    [trianglePath addLineToPoint:CGPointMake(imageRect.origin.x + imageRect.size.width, imageRect.origin.y + imageRect.size.height)];
    [trianglePath closePath];
    
    [trianglePath addClip];
    
    CGFloat locations[2] = {0.0, 1.0};
    CGFloat components[8] = {0.0, 1.0, 0.0, 1.0,
        1.0, 1.0, 0.0, 1.0};
    
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGGradientRef gradient = CGGradientCreateWithColorComponents(colorSpace, components, locations, 2);
    
    CGPoint startPoint = CGPointMake(center.x, imageRect.origin.y);
    CGPoint endPoint = CGPointMake(center.x, imageRect.origin.y + imageRect.size.height);
    
    CGContextDrawLinearGradient(currentContext, gradient, startPoint, endPoint, 0);
    
    CGGradientRelease(gradient);
    CGColorSpaceRelease(colorSpace);
    
    CGContextRestoreGState(currentContext);
    
    CGContextSaveGState(currentContext);
    CGContextSetShadow(currentContext, CGSizeMake(4, 7), 3);
    
    UIImage *logoImage = [UIImage imageNamed:@"New SCTP FULL logo2.png"];
    
    [logoImage drawInRect:imageRect];
}

@end
