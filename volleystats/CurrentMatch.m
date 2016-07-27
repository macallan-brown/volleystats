//
//  CurrentMatch.m
//  volleystats
//
//  Created by Macallan on 7/26/16.
//  Copyright © 2016 Macallan. All rights reserved.
//

#import "CurrentMatch.h"

@implementation CurrentMatch

+(Match*)sharedInstance {
    
    static Match *_sharedInstance = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[Match alloc] init];
    });
    
    return _sharedInstance;
}

@end
