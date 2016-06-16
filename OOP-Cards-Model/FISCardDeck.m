//
//  FISCardDeck.m
//  OOP-Cards-Model
//
//  Created by Zain Nadeem on 6/15/16.
//  Copyright © 2016 Al Tyus. All rights reserved.
//

#import "FISCardDeck.h"

@implementation FISCardDeck


-(instancetype)init{
    self = [super init];
    
    if (self){
        _remainingCards = [[NSMutableArray alloc] init];
        _dealtCards = [[NSMutableArray alloc] init];
        
        [self generateDeck];
    }
    return self;
}

-(NSString *)description{
    NSMutableString *cardsLeft;
    for (FISCard *card in self.remainingCards){
        [cardsLeft stringByAppendingString:card.description];
    }
    return [NSString stringWithFormat:@"Count: %lu /n Cards:%@",(unsigned long)self.remainingCards.count, cardsLeft];
}
-(instancetype)initWithRemainingCards:(NSMutableArray*)remainingCards DealtCards:(NSMutableArray*)dealtCards{
    self = [super init];
    
    
    if (self){
        _remainingCards = remainingCards;
        _dealtCards = dealtCards;
        [self generateDeck];
    }
    return self;
}


-(FISCard *)drawNextCard{
    if (self.remainingCards.count == 0){
        return nil;
        NSLog(@"THE DECK IS EMPTY");
    }else{
        FISCard *firstCard = [[FISCard alloc]init];
        firstCard = self.remainingCards[0];
        [self.remainingCards removeObject:firstCard];
        [self.dealtCards addObject:firstCard];
        return firstCard;
    }
}
-(void)resetDeck{
    [self gatherDealtCards];
    [self shuffleRemainingCards];
    
}
-(void)gatherDealtCards{
    [_remainingCards addObjectsFromArray:_dealtCards];
    [_dealtCards removeAllObjects];
    
}
-(void)shuffleRemainingCards{
    NSInteger count = self.remainingCards.count;
    for (NSInteger i = 0; i < count - 1; ++i)
    {
        NSInteger nElements = count - i;
        NSInteger n = arc4random_uniform(nElements) + i;
        [self.remainingCards exchangeObjectAtIndex:i withObjectAtIndex:n];
    }
}


//ask instructor
-(void)generateDeck{
    NSArray *ranksArray= [FISCard validRanks];
    NSArray *suitsArray= [FISCard validSuits];
    for (NSString *suit in suitsArray){
        for (NSString* rank in ranksArray){
            FISCard *card = [[FISCard alloc] initWithSuit:suit rank:rank];
            [self.remainingCards addObject:card];
        }
    }
}
@end
