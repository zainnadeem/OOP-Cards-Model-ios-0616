//
//  BaseballPlayerTest.m
//  OOP-Cards
//
//  Created by Al Tyus on 1/23/14.
//  Copyright (c) 2014 Al Tyus. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BaseballPlayer.h"

@interface BaseballPlayerTest : XCTestCase

@property (nonatomic)BaseballPlayer *player;

@end

@implementation BaseballPlayerTest

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
    self.player = [[BaseballPlayer alloc] initWithFirstName:@"Hank"
                                                   lastName:@"Aaron"
                                                     weight:@180
                                                     number:@44
                                                     height:@72];
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testDefaultInitializer
{
    BaseballPlayer *player = [[BaseballPlayer alloc] init];
    
    XCTAssertEqualObjects(player.weight, @0, @"Weight is not default value");
    XCTAssertEqualObjects(player.height, @0, @"Height is not default value");
    XCTAssertEqualObjects(player.number, @0, @"Number is not default value");
    XCTAssertEqualObjects(player.firstName, @"", @"First name is not default value");
    XCTAssertEqualObjects(player.lastName, @"", @"Last name is not default value");
}

- (void)testBaseballPlayerInitializer
{
    XCTAssertEqualObjects(self.player.weight, @180, @"Weight is not the correct value");
    XCTAssertEqualObjects(self.player.height, @72, @"Height is not the correct value");
    XCTAssertEqualObjects(self.player.number, @44, @"Number is not the correct value");
    XCTAssertEqualObjects(self.player.firstName, @"Hank", @"First name is not the correct value");
    XCTAssertEqualObjects(self.player.lastName, @"Aaron", @"Last name is not the correct value");
}

- (void)testConvertImperialMassToMetricMass
{
    NSNumber *kilos = @(roundf([[BaseballPlayer convertLbsToKGsWithLbs:@180] floatValue]));
    XCTAssertEqualObjects(kilos, @82, @"Weight conversion did not return expected value");
}

#pragma mark - Property setter tests 

- (void)testWeight
{
    self.player.weight = @250;
    XCTAssertEqualObjects(self.player.weight, @250, @"Weight should be what I set it to");
}

- (void)testNumber
{
    self.player.number = @55;
    XCTAssertEqualObjects(self.player.number, @55, @"Number should be what I set it to");
}

- (void)testHeight
{
    self.player.height = @72;
    XCTAssertEqualObjects(self.player.height, @72, @"Height should be what I set it to");
}

- (void)testFirstName
{
    self.player.firstName = @"Al";
    XCTAssertEqualObjects(self.player.firstName, @"Al", @"First name should be what I set it to");
}

- (void)testLastName
{
    self.player.lastName = @"Tyus";
    XCTAssertEqualObjects(self.player.lastName, @"Tyus", @"Last name should be what I set it to");
}
@end
