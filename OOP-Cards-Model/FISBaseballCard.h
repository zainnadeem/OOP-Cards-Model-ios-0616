//
//  BaseballCard.h
//  OOP-Cards-Model
//
//  Created by Chris Gonzales on 6/10/14.
//  Copyright (c) 2014 Al Tyus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISBaseballPlayer.h"
#import "FISCard.h"

@interface FISBaseballCard : FISCard
@property (strong, nonatomic) FISBaseballPlayer *player;
@property (strong, nonatomic) NSString *teamName;
@property (strong, nonatomic) NSString *brand;
@property (nonatomic) NSInteger cardNumber;

-(instancetype)initWithBaseballPlayer:(FISBaseballPlayer *)player
                             teamName:(NSString *)teamName
                                brand:(NSString *)brandName
                           cardNumber:(NSInteger)cardNumber;

@end
