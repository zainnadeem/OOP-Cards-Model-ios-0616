//
//  CardTest.m
//  OOP-Cards
//
//  Created by Al Tyus on 1/22/14.
//  Copyright (c) 2014 Al Tyus. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "PlayingCard.h"

@interface CardTest : XCTestCase

@property (nonatomic) PlayingCard *myCard;

@end

@implementation CardTest

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
    
    self.myCard = [[PlayingCard alloc] initWithSuit:@"♠️" rank:@5];
    
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
    
    self.myCard = nil;
}

- (void)testThatPlayingCardExists
{
    XCTAssertNotNil(self.myCard, @"Should be able to create a playing card instance");
}
- (void)testCardInitialization
{
    XCTAssertEqualObjects(self.myCard.suit, @"♠️", @"suit should match what I set it to");
    XCTAssertEqualObjects(self.myCard.rank, @5, @"rank should match what I set it to");
}

- (void)testPlayingCardDefaultInit
{
    PlayingCard *playingCard = [[PlayingCard alloc] init];
    XCTAssertEqualObjects(playingCard.suit, @"", @"suit should be an empty string by default");
    XCTAssertEqualObjects(playingCard.rank, @0, @"rank should be 0 by default ");
}

- (void)testSetSuit
{
    self.myCard.suit = @"♥️";
    XCTAssertEqualObjects(self.myCard.suit, @"♥️", @"The suit should match the value I set");
}

- (void)testSetRank
{
    self.myCard.rank = @10;
    XCTAssertEqualObjects(self.myCard.rank, @10, @"The rank should match the value I set");
}

- (void)testValidRankWithDesignatedInitializer
{
    PlayingCard *myValidPlayingCard = [[PlayingCard alloc] initWithSuit:@"♥️"
                                                              rank:@13];
    PlayingCard *myInvalidPlayingCard = [[PlayingCard alloc] initWithSuit:@"♥️"
                                                                     rank:@14];
    
    XCTAssertEqualObjects(myValidPlayingCard.rank, @13, @"Valid Ranks should return value as NSNumber");
    XCTAssertEqualObjects(myInvalidPlayingCard.rank, @0, @"Invalid Ranks should return 0 value");
}

- (void)testValidRankWithSetter
{
    PlayingCard *myValidPlayingCard = [[PlayingCard alloc] init];
    myValidPlayingCard.rank = @13;
    PlayingCard *myInvalidPlayingCard = [[PlayingCard alloc] init];
    myInvalidPlayingCard.rank = @14;
    
    XCTAssertEqualObjects(myValidPlayingCard.rank, @13, @"Valid Ranks should return value as NSNumber");
    XCTAssertEqualObjects(myInvalidPlayingCard.rank, @0, @"Invalid Ranks should return 0 value");
}

- (void)testValidSuitWithDesignatedInitializer
{
    PlayingCard *myValidPlayingCard = [[PlayingCard alloc] initWithSuit:@"♥️"
                                                                   rank:@13];
    PlayingCard *myInvalidPlayingCard = [[PlayingCard alloc] initWithSuit:@"X"
                                                                     rank:@14];
    XCTAssertEqualObjects(myValidPlayingCard.suit, @"♥️", @"Valid Suits should return suit");
    XCTAssertEqualObjects(myInvalidPlayingCard.suit, @"", @"Invalid Suits should return an empty string");
}

- (void)testValidSuitWithSetter
{
    PlayingCard *myValidPlayingCard = [[PlayingCard alloc] init];
    myValidPlayingCard.suit = @"♥️";
    PlayingCard *myInvalidPlayingCard = [[PlayingCard alloc] init];
    myInvalidPlayingCard.suit = @"X";
}

@end
