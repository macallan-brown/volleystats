//
//  Match.h
//  volleystats
//
//  Created by Macallan on 7/26/16.
//  Copyright © 2016 Macallan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Match : NSObject

@property(strong, nonatomic) NSMutableArray *roster;
@property(nonatomic) NSInteger numberOfSets;
@property(nonatomic) NSDate *datePlayed;
@property(strong, nonatomic) NSDictionary *scoresBySet;

-(void)initWithRoster:(NSArray*)roster withNumberOfSets:(NSInteger)numberOfSets;

@end
