//
//  Set.m
//  volleystats
//
//  Created by Macallan on 7/25/16.
//  Copyright © 2016 Macallan. All rights reserved.
//

#import "Set.h"

@implementation Set

-(void)initWithPlayers:(NSArray *)sevenPlaying {
    self.sevenPlaying = [sevenPlaying mutableCopy];
}

#pragma mark - Getters

-(NSInteger)teamScore {
    return 0;
}

-(NSInteger)otherTeamScore {
    return 0;
}

-(NSInteger)playToScore {
    return 25;
}

@end
