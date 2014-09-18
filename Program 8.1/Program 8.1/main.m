//
//  main.m
//  Program 8.1
//
//  Created by rob on 9/18/14.
//  Copyright (c) 2014 rob. All rights reserved.
//

#import <Foundation/Foundation.h>

// ClassA declaration and definition

@interface ClassA : NSObject
{
    int x;
}
-(void) initVar;
@end

@implementation ClassA
-(void) initVar
{
    x = 100;
}
@end

// ClassB declaration and definition

@interface ClassB : ClassA
-(void) printVar;
@end

@implementation ClassB
-(void) printVar
{
    NSLog(@"x = %i", x);
}
@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        ClassB *b = [[ClassB alloc] init];
        
        [b initVar]; // will use inherited method
        [b printVar]; // reveal value of x
        
    }
    return 0;
}

