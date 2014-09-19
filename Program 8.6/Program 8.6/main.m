//
//  main.m
//  Program 8.6
//
//  Created by rob on 9/19/14.
//  Copyright (c) 2014 rob. All rights reserved.
//

#import <Foundation/Foundation.h>

// ClassA declaration and definition

@interface ClassA : NSObject
{
    int x;
}
-(void) initVar;
-(void) printVar;
@end

@implementation ClassA
-(void) initVar
{
    x = 100;
}
-(void) printVar{
    NSLog(@"x = %i", x);
}
@end

@interface ClassB : ClassA
-(void) initVar;
@end

@implementation ClassB
-(void) initVar
{
    x = 200;
}
@end

@interface ClassC : ClassB
-(void) initVar;
@end

@implementation ClassC
-(void) initVar
{
    x = 300;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ClassA *a = [[ClassA alloc] init];
        ClassB *b = [[ClassB alloc] init];
        ClassB *c = [[ClassC alloc] init];
        
        [a initVar];
        [a printVar];
        
        [b initVar];
        [b printVar];
        
        [c initVar];
        [c printVar];
        
    }
    return 0;
}
