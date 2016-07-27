//
//  Player.h
//  volleystats
//
//  Created by Macallan on 7/25/16.
//  Copyright © 2016 Macallan. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, Position) {
    OUTSIDE = 0,
    SETTER = 1,
    MIDDLE = 2,
    OPPOSITE = 3,
    LIBERO = 4
};

@interface Player : NSObject

@property(strong, nonatomic) NSString *name;
@property(nonatomic) NSInteger number;
@property(nonatomic) Position position;
@property(nonatomic, readonly) NSInteger digs;
@property(nonatomic, readonly) NSInteger assists;
@property(nonatomic, readonly) NSInteger kills;
@property(nonatomic, readonly) NSInteger aces;


-(id)initWithName:(NSString*)name withNumber:(NSInteger)number withPosition:(Position) position;

-(void)addOneDig;
-(void)subtractOneDig;
-(void)addOneAssist;
-(void)subtractOneAssist;
-(void)addOneKill;
-(void)subtractOneKill;
-(void)addOneAce;
-(void)subtractOneAce;

-(NSString*) getPositionString;

@end
