//
//  Match.m
//  volleystats
//
//  Created by Macallan on 7/26/16.
//  Copyright © 2016 Macallan. All rights reserved.
//

#import "Match.h"

@implementation Match

-(void)initWithRoster:(NSArray*)roster withNumberOfSets:(NSInteger)numberOfSets {
    self.roster = [roster mutableCopy];
    self.numberOfSets = numberOfSets;
    self.datePlayed = [NSDate dateWithTimeIntervalSinceNow:NSTimeIntervalSince1970];
}

#pragma mark - Getters

//Default is five sets
-(NSInteger)numberOfSets {
    if (_numberOfSets) {
        return _numberOfSets;
    }
    
    return 5;
}

@end
