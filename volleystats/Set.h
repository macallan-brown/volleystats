//
//  Set.h
//  volleystats
//
//  Created by Macallan on 7/25/16.
//  Copyright © 2016 Macallan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface Set : NSObject

@property(nonatomic) NSInteger teamScore;
@property(nonatomic) NSInteger otherTeamScore;
@property(nonatomic) NSInteger setNumber;
@property(nonatomic) NSInteger playToScore;
@property(strong, nonatomic) NSMutableArray *sevenPlaying;

-(void)initWithPlayers:(NSArray*) team;

@end
