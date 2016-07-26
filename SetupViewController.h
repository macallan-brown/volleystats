//
//  SetupViewController.h
//  volleystats
//
//  Created by Macallan on 7/26/16.
//  Copyright © 2016 Macallan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayerDetailsViewController.h"

@interface SetupViewController : UIViewController<PlayerDetails>

@property (weak, nonatomic) IBOutlet UITableView *rosterTableView;
@property (nonatomic) PlayerDetailsViewController *playerDetailViewController;

-(void)finishEditing;

@end
