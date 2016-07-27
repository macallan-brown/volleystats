//
//  PlayerDetailsViewController.m
//  volleystats
//
//  Created by Macallan on 7/26/16.
//  Copyright © 2016 Macallan. All rights reserved.
//

#import "PlayerDetailsViewController.h"

@implementation PlayerDetailsViewController

- (void)setupWithPlayer:(Player*)player {
    self.nameTextField.text = player.name;
    self.numberTextField.text = [NSString stringWithFormat:@"%li", player.number];
    [self.addPlayerButton setTitle:@"Save Changes" forState:UIControlStateNormal];
    self.titleLabel.text = @"Edit Player Information";
}

- (void)setupAddPlayer {
    self.nameTextField.text = nil;
    self.numberTextField.text = nil;
    self.nameTextField.placeholder = @"Name";
    self.numberTextField.placeholder = @"Number";
    [self.addPlayerButton setTitle:@"Add Player" forState:UIControlStateNormal];
    self.titleLabel.text = @"Add Player To Roster";
}

#pragma mark - IBActions

- (IBAction)positionSelected:(id)sender {
}

- (IBAction)addPlayerButtonPressed:(id)sender {
    [self.delegate finishEditing:YES];
}

- (IBAction)cancelButtonPressed:(id)sender {
    [self.delegate finishEditing:NO];
}
@end
