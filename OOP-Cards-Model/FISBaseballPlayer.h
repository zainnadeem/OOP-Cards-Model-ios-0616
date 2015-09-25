//
//  BaseballPlayer.h
//  OOP-Cards-Model
//
//  Created by Chris Gonzales on 6/10/14.
//  Copyright (c) 2014 Al Tyus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISBaseballPlayer : NSObject
@property (strong, nonatomic) NSString *firstName;
@property (strong, nonatomic) NSString *lastName;
@property (nonatomic) CGFloat weight;
@property (nonatomic) NSInteger number;
@property (nonatomic) CGFloat height;

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                          weight:(CGFloat)weight
                          number:(NSInteger)number
                          height:(CGFloat)height;

+(CGFloat)convertLbsToKGsWithLbs:(CGFloat)lbs;

@end
