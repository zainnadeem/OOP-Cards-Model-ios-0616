//
//  BaseballCard.h
//  OOP-Cards-Model
//
//  Created by Chris Gonzales on 6/10/14.
//  Copyright (c) 2014 Al Tyus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseballPlayer.h"
#import "Card.h"

@interface BaseballCard : Card
@property (strong, nonatomic) BaseballPlayer *player;
@property (strong, nonatomic) NSString *teamName;
@property (strong, nonatomic) NSString *brand;
@property (strong, nonatomic) NSNumber *cardNumber;

-(instancetype)initWithBaseballPlayer:(BaseballPlayer *)player
                             teamName:(NSString *)teamName
                                brand:(NSString *)brandName
                           cardNumber:(NSNumber *)cardNumber;

@end
