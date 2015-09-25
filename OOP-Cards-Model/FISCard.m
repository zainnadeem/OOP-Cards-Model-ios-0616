//
//  Card.m
//  OOP-Cards-Model
//
//  Created by Chris Gonzales on 6/10/14.
//  Copyright (c) 2014 Al Tyus. All rights reserved.
//

#import "FISCard.h"

@implementation FISCard

- (NSString *)description
{
    return @"";
}

- (void)flipCard
{
    self.faceUp = !self.isFaceUp;
}

@end
