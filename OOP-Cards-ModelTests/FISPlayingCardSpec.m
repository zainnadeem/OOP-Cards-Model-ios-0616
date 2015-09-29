//
//  PlayingCardSpec.m
//  OOP-Cards-Model
//
//  Created by Chris Gonzales on 6/10/14.
//  Copyright 2014 Al Tyus. All rights reserved.
//

#import "Specta.h"
#import "FISPlayingCard.h"
#define EXP_SHORTHAND
#import "Expecta.h"

SpecBegin(FISPlayingCard)

describe(@"FISPlayingCard", ^{
    __block FISPlayingCard *myCard;
    beforeEach(^{
        myCard = [[FISPlayingCard alloc] initWithSuit:@"♠" rank:5];
    });
    
    describe(@"default init sets", ^{
        __block FISPlayingCard *defaultCard = [[FISPlayingCard alloc] init];
        it(@"suit to empty string",^{
            expect(defaultCard.suit).to.equal(@"");
        });
        
        it(@"rank to 0",^{
            expect(defaultCard.rank).to.equal(0);
        });
    });
    
    describe(@"rank validation", ^{
        __block FISPlayingCard *aPlayingCard;
        
        beforeAll(^{
            aPlayingCard = [[FISPlayingCard alloc] init];
        });
        
        it(@"returns valid ranks",^{
            aPlayingCard.rank = 5;
            expect(aPlayingCard.rank).to.equal(5);
        });
        
        it(@"return 0 for invalid ranks",^{
            aPlayingCard.rank = 15;
            expect(aPlayingCard.rank).to.equal(0);
        });
    });

    describe(@"suit validation", ^{
        __block FISPlayingCard *aPlayingCard;
        
        beforeAll(^{
            aPlayingCard = [[FISPlayingCard alloc] init];
        });
        
        it(@"returns a valid suit",^{
            aPlayingCard.suit = @"♥";
            expect(aPlayingCard.suit).to.equal(@"♥");
        });
        
        it(@"return an empty string for invalid suit",^{
            aPlayingCard.suit = @"X";
            expect(aPlayingCard.suit).to.equal(@"");
        });
    });
});

SpecEnd
