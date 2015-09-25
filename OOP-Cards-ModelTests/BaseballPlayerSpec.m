//
//  BaseballPlayerSpec.m
//  OOP-Cards-Model
//
//  Created by Chris Gonzales on 6/10/14.
//  Copyright 2014 Al Tyus. All rights reserved.
//

#import "Specta.h"
#import "BaseballPlayer.h"
#define EXP_SHORTHAND
#import "Expecta.h"

SpecBegin(BaseballPlayer)

describe(@"BaseballPlayer", ^{
    __block BaseballPlayer *player;
    
    beforeEach(^{
        player = [[BaseballPlayer alloc] initWithFirstName:@"Hank" lastName:@"Aaron" weight:@180 number:@44 height:@72];
    });
    
    describe(@"default initializer", ^{
        __block BaseballPlayer *defaultPlayer;
        
        beforeAll(^{
            defaultPlayer = [[BaseballPlayer alloc] init];
        });
        
        it(@"should return the default weight",^{
            expect(defaultPlayer.weight).to.equal(@0);
        });
        
        it(@"should return the default height",^{
            expect(defaultPlayer.height).to.equal(@0);
        });
        
        it(@"should return the default number",^{
            expect(defaultPlayer.number).to.equal(@0);
        });
        
        it(@"should return the default first name",^{
            expect(defaultPlayer.firstName).to.equal(@"");
        });
        
        it(@"should return the default last name",^{
            expect(defaultPlayer.lastName).to.equal(@"");
        });
    });
    
    describe(@"baseball player initializer", ^{
        
        it(@"should set weight to the correct value",^{
            expect(player.weight).to.equal(@180);
        });
        
        it(@"should set height to the correct value",^{
            expect(player.height).to.equal(@72);
        });
        
        it(@"should set number to the correct value",^{
            expect(player.number).to.equal(@44);
        });
        
        it(@"should set first name to the correct value",^{
            expect(player.firstName).to.equal(@"Hank");
        });
        
        it(@"should set last name to the correct value",^{
            expect(player.lastName).to.equal(@"Aaron");
        });
    });
    
    describe(@"convertLbsToKGsWithLbs", ^{
        it(@"should perform a weight conversion and return the expected value",^{
            NSNumber *kilos = @(roundf([[BaseballPlayer convertLbsToKGsWithLbs:@180] floatValue]));
            expect(kilos).to.equal(@82);
        });
    });
    
#pragma mark - Property setter tests
    
    describe(@"weight property", ^{
        it(@"weight should be what I set it to",^{
            player.weight = @250;
            expect(player.weight).to.equal(@250);
        });
    });
    
    describe(@"number property", ^{
        it(@"number should be what I set it to",^{
            player.number = @55;
            expect(player.number).to.equal(@55);
        });
     
    describe(@"height property", ^{
        it(@"height should be what I set it to",^{
            player.height = @72;
            expect(player.height).to.equal(@72);
        });
    });
        
    describe(@"first name property", ^{
        it(@"first name should be what I set it to",^{
            player.firstName = @"Al";
            expect(player.firstName).to.equal(@"Al");
        });
    });
        
    describe(@"last name property", ^{
        it(@"last name should be what I set it to",^{
            player.lastName = @"Tyus";
            expect(player.lastName).to.equal(@"Tyus");
        });
    });   });
    
});

SpecEnd
