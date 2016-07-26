//
//  PlayerDetailsViewController.m
//  volleystats
//
//  Created by Macallan on 7/26/16.
//  Copyright © 2016 Macallan. All rights reserved.
//

#import "PlayerDetailsViewController.h"

@implementation PlayerDetailsViewController

- (IBAction)positionSelected:(id)sender {
}

- (IBAction)addPlayerButtonPressed:(id)sender {
    
    [self.delegate finishEditing];
}
@end
