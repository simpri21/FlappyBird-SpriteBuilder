//
//  Test.m
//  FlappyBird
//
//  Created by Victoria Simpri on 12/30/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import <Foundation/Foundation.h>
-(void) doSomething
{
    NSLog(@"Hello World");
}

-(void) doSomethingWithAString: (NSString*) myString
{
    //returns length of string times ten
    return [mystring length] * 10
}

-(NSArray *) addThisStringToAnArray:(NSString*) firstString andThisString: (NSString*) secondString
andAlsoThisString: (NSString*) thirdString
{
    return [NSArray arrayWithObjects: firstString, secondString, thirdString, nil];
}