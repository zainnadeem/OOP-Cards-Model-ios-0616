//
//  CardTests.m
//  OOP-Cards
//
//  Created by Al Tyus on 1/23/14.
//  Copyright (c) 2014 Al Tyus. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Card.h"

@interface CardTests : XCTestCase

@property (strong, nonatomic) Card *card;
@end

@implementation CardTests

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
    
    self.card = [[Card alloc] init];
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testCardExists
{
    XCTAssertNotNil(self.card, @"I should be able to make a card");
}

- (void)testCardDescription
{
    XCTAssertEqualObjects(self.card.description, @"", @"Card Description should return an empty string and be implemented in Card subclass");
}

@end
