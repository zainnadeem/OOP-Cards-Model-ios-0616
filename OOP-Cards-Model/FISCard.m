//
//  FISCard.m
//  OOP-Cards-Model
//
//  Created by Zain Nadeem on 6/15/16.
//  Copyright © 2016 Al Tyus. All rights reserved.
//

#import "FISCard.h"

@interface FISCard ()

@property (strong, nonatomic, readwrite) NSString *suit;
@property (strong, nonatomic, readwrite) NSString *rank;
@property (strong, nonatomic, readwrite) NSString *cardLabel;
@property (nonatomic, readwrite) NSUInteger cardValue;

@end


@implementation FISCard

-(instancetype)init{
    self = [self initWithSuit:@"!" rank:@"N"];
    return self;
}



-(instancetype)initWithSuit:(NSString*)suit rank:(NSString*)rank{
    self = [super init];
    
    if (self){
        _suit = suit;
        _rank = rank;
        _cardLabel = [NSString stringWithFormat:@"%@%@",_suit,_rank];
        
        NSUInteger i = [[FISCard validRanks] indexOfObject:_rank];
        NSUInteger rankValue;
            if (i == 0){
                rankValue = 1;
            }else if((i < 9) && (i > 0)){
                rankValue = i+1;
            }else{
                rankValue = 10;
            }
    
        _cardValue = rankValue;
    }
    return self;
}

-(NSString*)description{
    return self.cardLabel;
}

+(NSArray*)validSuits{
    NSArray *suits = @[@"♠", @"♥", @"♣", @"♦"];
    return suits;
}
+(NSArray*)validRanks{
    NSArray *ranks = @[ @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
    return ranks;
}

//-(NSUInteger)returnCardValue:(NSString *)rankString{
//    NSArray* ranks = [FISCard validRanks];
//    NSUInteger rank;
//    for (NSUInteger i = 0; i<ranks.count;i++){
//        if (i == 0){
//            rank = 1;
//        }else if((i < 9) && (i > 0)){
//            rank = i+1;
//        }else{
//            rank = 10;
//    }
//    }
//    return rank;
//}



@end
