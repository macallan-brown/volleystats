//
//  PlayerDetailsViewController.h
//  volleystats
//
//  Created by Macallan on 7/26/16.
//  Copyright © 2016 Macallan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"
@class SetupViewController;

@interface PlayerDetailsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIButton *addPlayerButton;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *numberTextField;

@property (nonatomic) BOOL isAddPlayer;

@property (weak, nonatomic) id delegate;

- (void)setupWithPlayer:(Player*)player;
- (void)setupAddPlayer;

- (IBAction)positionSelected:(id)sender;
- (IBAction)addPlayerButtonPressed:(id)sender;
- (IBAction)cancelButtonPressed:(id)sender;

@end

@protocol PlayerDetails <NSObject>

- (void) finishEditing:(BOOL)saveEdits;

@end
