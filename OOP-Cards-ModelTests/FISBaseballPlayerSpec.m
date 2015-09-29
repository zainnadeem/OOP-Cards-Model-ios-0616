//
//  BaseballPlayerSpec.m
//  OOP-Cards-Model
//
//  Created by Chris Gonzales on 6/10/14.
//  Copyright 2014 Al Tyus. All rights reserved.
//

#import "Specta.h"
#import "FISBaseballPlayer.h"
#define EXP_SHORTHAND
#import "Expecta.h"

SpecBegin(FISBaseballPlayer)

describe(@"FISBaseballPlayer", ^{
    __block FISBaseballPlayer *player;
    
    beforeEach(^{
        player = [[FISBaseballPlayer alloc] initWithFirstName:@"Hank" lastName:@"Aaron" weight:180.0f number:44 height:72.0f];
    });
    
    describe(@"default initializer sets", ^{
        __block FISBaseballPlayer *defaultPlayer;
        
        beforeAll(^{
            defaultPlayer = [[FISBaseballPlayer alloc] init];
        });
        
        it(@"weight to 0.0",^{
            expect(defaultPlayer.weight).to.equal(0.0);
        });
        
        it(@"height to 0.0",^{
            expect(defaultPlayer.height).to.equal(0.0);
        });
        
        it(@"number to 0",^{
            expect(defaultPlayer.number).to.equal(0);
        });
        
        it(@"firstName to empty string",^{
            expect(defaultPlayer.firstName).to.equal(@"");
        });
        
        it(@"lastName to empty string",^{
            expect(defaultPlayer.lastName).to.equal(@"");
        });
    });
    
    
    describe(@"convertLbsToKGsWithLbs", ^{
        it(@"should perform a weight conversion and return the expected value",^{
            CGFloat kilos = roundf([FISBaseballPlayer convertLbsToKGsWithLbs:180]);
            expect(kilos).to.equal(82);
        });
    });
});

SpecEnd
