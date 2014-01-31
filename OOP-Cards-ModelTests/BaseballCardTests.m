//
//  BaseballCardTest.m
//  OOP-Cards
//
//  Created by Al Tyus on 1/22/14.
//  Copyright (c) 2014 Al Tyus. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BaseballCard.h"
#import "BaseballPlayer.h"

@interface BaseballCardTest : XCTestCase
@property (nonatomic) BaseballCard *baseballCard;
@property (nonatomic) BaseballPlayer *baseballPlayer;
@end

@implementation BaseballCardTest

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
    self.baseballPlayer = [[BaseballPlayer alloc] init];
    
    self.baseballCard = [[BaseballCard alloc] initWithBaseballPlayer:self.baseballPlayer
                                                            teamName:@"Flatiron School"
                                                               brand:@"New Era"
                                                          cardNumber:@1272];
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testBaseballCardExists
{
    XCTAssertNotNil(self.baseballCard, @"I should be able to create a baseball card");
}

#pragma mark - Test Initializers 

- (void)testBaseballCardDesignatedInitialization
{
    XCTAssertEqualObjects(self.baseballCard.player, self.baseballPlayer, @"Baseball player is not equal to baseball player");
    XCTAssertEqualObjects(self.baseballCard.teamName, @"Flatiron School", @"Team name is not correct");
    XCTAssertEqualObjects(self.baseballCard.brand, @"New Era", @"brand is not correct");
    XCTAssertEqualObjects(self.baseballCard.cardNumber, @1272, @"Card Number is not correct");
}

- (void)testBaseballCardDefaultInit
{
    BaseballCard *baseballCard = [[BaseballCard alloc] init];
    XCTAssertTrue([self baseballPlayer:baseballCard.player isEqualToBaseballPlayer:[[BaseballPlayer alloc] init]], @"Baseball player is not default value");
    XCTAssertEqualObjects(baseballCard.teamName, @"", @"Baseball Card Team name is not default value");
    XCTAssertEqualObjects(baseballCard.brand, @"", @"Baseball Card brand name is not default value");
    XCTAssertEqualObjects(baseballCard.cardNumber, @0, @"Baseball card number default should be 0");
}

- (BOOL)baseballPlayer:(BaseballPlayer *)player1 isEqualToBaseballPlayer:(BaseballPlayer *)player2
{
    BOOL isEqual = YES;
    
    if (![player1.weight isEqual:player2.weight])
    {
        isEqual = NO;
    }
    else if (![player1.number isEqual:player2.number])
    {
        isEqual =  NO;
    }
    else if (![player1.height isEqual:player2.height])
    {
        isEqual = NO;
    }
    else if (![player1.firstName isEqualToString:player2.firstName])
    {
        isEqual = NO;
    }
    else if (![player1.lastName isEqualToString:player2.lastName])
    {
        isEqual = NO;
    }
    return isEqual;
}

- (void)testBaseballCardDescription
{
    NSString *description = self.baseballCard.description;
    XCTAssertEqualObjects(@"Player name:  Team name:Flatiron School Brand:New Era Card Number:1272", description, @"Description is not correct");
}

#pragma mark - Test Property Setters
- (void)testTeamName
{
    BaseballCard *card = [[BaseballCard alloc] init];
    card.teamName = @"Braves";
    XCTAssertEqualObjects(card.teamName, @"Braves", @"Team name should match what I set it to");
}

- (void)testBrand
{
    BaseballCard *card = [[BaseballCard alloc] init];
    card.brand = @"New Era";
    XCTAssertEqualObjects(card.brand, @"New Era", @"Brand should match what I set it to");
}

- (void)testCardNumber
{
    BaseballCard *card = [[BaseballCard alloc] init];
    card.cardNumber= @2520;
    XCTAssertEqualObjects(card.cardNumber, @2520, @"Card Number should match what I set it to");
}

- (void)testBaseballPlayer
{
    BaseballCard *card = [[BaseballCard alloc] init];
    card.player = [[BaseballPlayer alloc] init];
    XCTAssertTrue([self baseballPlayer:[[BaseballPlayer alloc] init] isEqualToBaseballPlayer:card.player], @"Baseball Player should match what I set it to");
}

@end
