//
//  CardSpec.m
//  OOP-Cards-Model
//
//  Created by Chris Gonzales on 6/10/14.
//  Copyright 2014 Al Tyus. All rights reserved.
//

#import "Specta.h"
#import "FISCard.h"
#define EXP_SHORTHAND
#import "Expecta.h"

SpecBegin(FISCard)

describe(@"FISCard", ^{
    __block FISCard *card;
    
    beforeAll(^{
        card = [[FISCard alloc] init];
    });
    
    it(@"exists", ^{
        expect(card).notTo.beNil();
    });

});

SpecEnd
