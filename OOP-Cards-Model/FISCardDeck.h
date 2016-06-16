//
//  FISCardDeck.h
//  OOP-Cards-Model
//
//  Created by Zain Nadeem on 6/15/16.
//  Copyright © 2016 Al Tyus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISCard.h"

@interface FISCardDeck : NSObject

@property (strong, nonatomic, readwrite) NSMutableArray *remainingCards;
@property (nonatomic, readwrite) NSMutableArray* dealtCards;

-(instancetype)initWithRemainingCards:(NSMutableArray*)remainingCards DealtCards:(NSMutableArray*)dealtCards;
-(FISCard *)drawNextCard;
-(void)resetDeck;
-(void)gatherDealtCards;
-(void)shuffleRemainingCards;

                                      
                                      
                                      
                                      

@end
