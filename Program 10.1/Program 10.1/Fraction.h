//
//  Fraction.h
//  FractionTest
//
//  Created by rob on 9/17/14.
//  Copyright (c) 2014 rob. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator, real, imaginary;

-(id) init;
+(Fraction *) allocF;
+(int) count;
-(void) print;
-(id) initWith: (int) n over: (int) d;
-(void) setTo: (int) n over: (int) d;
-(double) convertToNum;
-(Fraction *) add: (Fraction *) f;
-(void) setReal: (double) a andImaginary: (double) b;
-(void) reduce;

@end
