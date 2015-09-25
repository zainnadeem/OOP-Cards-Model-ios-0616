//
//  BaseballCardSpec.m
//  OOP-Cards-Model
//
//  Created by Chris Gonzales on 6/10/14.
//  Copyright 2014 Al Tyus. All rights reserved.
//

#import "Specta.h"
#import "FISBaseballCard.h"
#import "FISBaseballPlayer.h"
#define EXP_SHORTHAND
#import "Expecta.h"

SpecBegin(FISBaseballCard)

describe(@"FISBaseballCard", ^{
    __block FISBaseballCard *baseballCard;
    __block FISBaseballPlayer *baseballPlayer;
    
    beforeAll(^{
        baseballPlayer = [[FISBaseballPlayer alloc] init];
        baseballCard = [[FISBaseballCard alloc] initWithBaseballPlayer:baseballPlayer teamName:@"Flatiron School" brand:@"New Era" cardNumber:1272];
    });
    
    describe(@"default init sets", ^{
        __block FISBaseballCard *defaultBaseballCard;
        beforeAll(^{
            defaultBaseballCard = [[FISBaseballCard alloc] init];
        });
        
        it(@"player to the default baseball player",^{
            expect(defaultBaseballCard.player.weight).to.equal(0);
            expect(defaultBaseballCard.player.number).to.equal(0);
            expect(defaultBaseballCard.player.height).to.equal(0);
            expect(defaultBaseballCard.player.firstName).to.equal(@"");
            expect(defaultBaseballCard.player.lastName).to.equal(@"");
        });
        
        it(@"teamName to empty string",^{
            expect(defaultBaseballCard.teamName).to.equal(@"");
        });
        
        it(@"brand to empty string",^{
            expect(defaultBaseballCard.brand).to.equal(@"");
        });
        
        it(@"cardNumber to 0",^{
            expect(defaultBaseballCard.cardNumber).to.equal(0);
        });
    });
});

SpecEnd
