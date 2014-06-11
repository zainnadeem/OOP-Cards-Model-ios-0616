//
//  BaseballPlayer.m
//  OOP-Cards-Model
//
//  Created by Chris Gonzales on 6/10/14.
//  Copyright (c) 2014 Al Tyus. All rights reserved.
//

#import "BaseballPlayer.h"

@implementation BaseballPlayer

- (instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName weight:(NSNumber *)weight number:(NSNumber *)number height:(NSNumber *)height
{
    self = [super init];
    if (self) {
        _firstName = firstName;
        _lastName = lastName;
        _weight = weight;
        _number = number;
        _height = height;
    }
    return self;
}

-(instancetype)init
{
    return [self initWithFirstName:@"" lastName:@"" weight:@0 number:@0 height:@0];
}

+(NSNumber *)convertLbsToKGsWithLbs:(NSNumber *)lbs
{
    return [NSNumber numberWithFloat: [lbs floatValue]/2.2046f];
}
@end
