//
//  Player.m
//  volleystats
//
//  Created by Macallan on 7/25/16.
//  Copyright © 2016 Macallan. All rights reserved.
//

#import "Player.h"

@interface Player()

@property(nonatomic, readwrite) NSInteger digs;
@property(nonatomic, readwrite) NSInteger assists;
@property(nonatomic, readwrite) NSInteger kills;
@property(nonatomic, readwrite) NSInteger aces;

@end

@implementation Player

#pragma mark - Initialization Methods

-(id)initWithName:(NSString *)name withNumber:(NSInteger)number withPosition:(Position)position {
    self.name = name;
    self.number = number;
    self.position = position;
    return self;
}

#pragma mark - Setters

-(NSInteger)digs{
    if(_digs){
        return _digs;
    }
    
    return 0;
}

-(NSInteger)assists{
    if(_assists){
        return _assists;
    }
    
    return 0;
}

-(NSInteger)kills{
    if(_kills){
        return _kills;
    }
    
    return 0;
}

-(NSInteger)aces{
    if(_aces){
        return _aces;
    }
    
    return 0;
}

#pragma mark - Getters

-(NSString*)getPositionString {
    switch (self.position) {
        case SETTER:
            return @"Setter";
        case OUTSIDE:
            return @"Outside Hitter";
        case MIDDLE:
            return @"Middle Blocker";
        case OPPOSITE:
            return @"Opposite Hitter";
        case LIBERO:
            return @"Libero/Defensive Specialist";
        default:
            return @"Volleyball Player";
    }
}

#pragma mark - Add/Subtract variables

-(void)addOneDig {
    self.digs = self.digs + 1;
}

-(void)subtractOneDig {
    if(self.digs > 0) {
        self.digs = self.digs - 1;
    }
}

-(void)addOneAssist {
    self.assists = self.assists + 1;
}

-(void)subtractOneAssist {
    if(self.assists > 0) {
        self.assists = self.assists - 1;
    }
}

-(void)addOneKill {
    self.kills = self.kills + 1;
}

-(void)subtractOneKill {
    if(self.kills > 0) {
        self.kills = self.kills - 1;
    }
}

-(void)addOneAce {
    self.aces = self.aces + 1;
}

-(void)subtractOneAce {
    if(self.aces > 0) {
        self.aces = self.aces - 1;
    }
}

@end
