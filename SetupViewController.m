//
//  SetupViewController.m
//  volleystats
//
//  Created by Macallan on 7/26/16.
//  Copyright © 2016 Macallan. All rights reserved.
//

#import "SetupViewController.h"
#import "CurrentMatch.h"
#import "Player.h"
#import "RosterTableViewCell.h"

@interface SetupViewController()

@property (strong, nonatomic) UIVisualEffectView *blurView;
@property (strong, nonatomic) NSMutableArray *roster;
@property (nonatomic) NSInteger indexOfCurrentPlayer;

@end

@implementation SetupViewController

-(void)viewDidLoad {
    Player *karchKiraly = [[Player alloc] initWithName:@"Karch Kiraly" withNumber:15 withPosition:OUTSIDE];
    Player *mistyMay = [[Player alloc] initWithName:@"Misty May - Treanor" withNumber:15 withPosition:OUTSIDE];
    Player *macallanBrown = [[Player alloc] initWithName:@"Macallan Brown" withNumber:12 withPosition:OUTSIDE];
    
    self.roster = [NSMutableArray arrayWithObjects: karchKiraly, mistyMay, macallanBrown, nil];
    [CurrentMatch.sharedInstance initWithRoster:self.roster withNumberOfSets:5];
    
    self.rosterTableView.delegate = self;
    self.rosterTableView.dataSource = self;
}

#pragma mark - Getters

-(UIVisualEffectView *)blurView {
    if(_blurView) {
        return _blurView;
    }
    
    UIVisualEffect *blurEffect;
    blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    _blurView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    [_blurView setFrame:self.view.bounds];
    [_blurView setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight];
    return _blurView;
}

-(PlayerDetailsViewController*)playerDetailViewController{
    if (_playerDetailViewController){
        return _playerDetailViewController;
    }
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    _playerDetailViewController = [storyboard instantiateViewControllerWithIdentifier:@"playerDetailViewController"];
    _playerDetailViewController.delegate = self;
    return _playerDetailViewController;
}

#pragma mark - IBActions

- (IBAction)addPlayerClicked:(id)sender {
    self.indexOfCurrentPlayer = -1;
    [self.view addSubview:self.blurView];
    [self.view addSubview:self.playerDetailViewController.view];
    [self.playerDetailViewController setupAddPlayer];
}

#pragma mark - Player Details Delegate

- (void)finishEditing:(BOOL)saveEdits {
    [self.blurView removeFromSuperview];
    [self.playerDetailViewController.view removeFromSuperview];
    
    if(saveEdits) {
        self.currentPlayer.name = self.playerDetailViewController.nameTextField.text;
        self.currentPlayer.number = [self.playerDetailViewController.numberTextField.text intValue];
        if(self.indexOfCurrentPlayer == -1) {
            [self.roster addObject:self.currentPlayer];
        } else {
            [self.roster replaceObjectAtIndex:self.indexOfCurrentPlayer withObject:self.currentPlayer];
        }
        
        CurrentMatch.sharedInstance.roster = self.roster;
        [self.rosterTableView reloadData];
    }
}

#pragma mark - TableView Delegate

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.roster count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    RosterTableViewCell *cell = (RosterTableViewCell *)[self.rosterTableView dequeueReusableCellWithIdentifier:@"rosterTableViewCell"];
    
    self.currentPlayer = [self.roster objectAtIndex:indexPath.row];
    if([self.currentPlayer isKindOfClass:Player.class]) {
        cell.textLabel.text = self.currentPlayer.name;
        cell.detailTextLabel.text = [NSString stringWithFormat:@"%li - %@",self.currentPlayer.number, [self.currentPlayer getPositionString]];
    }
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.currentPlayer = [self.roster objectAtIndex:indexPath.row];
    self.indexOfCurrentPlayer = indexPath.row;
    [self.view addSubview:self.blurView];
    [self.view addSubview:self.playerDetailViewController.view];
    [self.playerDetailViewController setupWithPlayer:self.currentPlayer];
}

@end
