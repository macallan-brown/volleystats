//
//  CurrentMatch.h
//  volleystats
//
//  Created by Macallan on 7/26/16.
//  Copyright © 2016 Macallan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Match.h"

@interface CurrentMatch : NSObject

+(Match*)sharedInstance;

@end
