//
//  main.m
//  Program 5.8
//
//  Created by rob on 9/10/14.
//  Copyright (c) 2014 rob. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        int number, right_digit;
        
        NSLog(@"Enter your number.");
        scanf("%i", &number);
        
        do{
            right_digit = number % 10;
            NSLog(@"%i", right_digit);
            number /= 10;
        }while(number != 0);
        
    }
    return 0;
}

