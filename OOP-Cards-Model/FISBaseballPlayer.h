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
@property (strong, nonatomic) NSNumber *weight;
@property (strong, nonatomic) NSNumber *number;
@property (strong, nonatomic) NSNumber *height;

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                          weight:(NSNumber *)weight
                          number:(NSNumber *)number
                          height:(NSNumber *)height;

+(NSNumber *)convertLbsToKGsWithLbs:(NSNumber *)lbs;

@end
