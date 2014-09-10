//
//  main.m
//  Program 5.5
//
//  Created by rob on 9/10/14.
//  Copyright (c) 2014 rob. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        int n, number, triangularNumber, counter;
        
        for(counter = 1; counter <= 5; ++counter){
            NSLog(@"What triangular number do you want?");
            scanf("%i", &number);
        
            triangularNumber = 0;
        
            for(n = 1; n <= number; n = n + 1)
                triangularNumber += n;
        
            NSLog(@"Triangular number %i is %i\n", number, triangularNumber);
        }
        
    }
    return 0;
}
