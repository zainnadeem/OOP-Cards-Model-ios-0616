//
//  BaseballCard.m
//  OOP-Cards-Model
//
//  Created by Chris Gonzales on 6/10/14.
//  Copyright (c) 2014 Al Tyus. All rights reserved.
//

#import "FISBaseballCard.h"

@implementation FISBaseballCard

-(instancetype)initWithBaseballPlayer:(FISBaseballPlayer *)player teamName:(NSString *)teamName brand:(NSString *)brandName cardNumber:(NSNumber *)cardNumber
{
    self = [super init];
    if (self) {
        _player = player;
        _teamName = teamName;
        _brand = brandName;
        _cardNumber = cardNumber;
    }
    return self;
}

-(instancetype)init
{
    return [self initWithBaseballPlayer:[[FISBaseballPlayer alloc] init] teamName:@"" brand:@"" cardNumber:@0];
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"Player name:%@ Team name:%@ Brand:%@ Card Number:%@", self.player.firstName, self.teamName, self.brand, self.cardNumber];
}
@end
