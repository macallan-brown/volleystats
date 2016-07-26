//
//  SetupViewController.m
//  volleystats
//
//  Created by Macallan on 7/26/16.
//  Copyright © 2016 Macallan. All rights reserved.
//

#import "SetupViewController.h"

@interface SetupViewController()

@property (strong, nonatomic) UIVisualEffectView *blurView;

@end

@implementation SetupViewController

-(void)viewDidLoad {

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

#pragma mark - IBActions

- (IBAction)addPlayerClicked:(id)sender {
    [self.view addSubview:self.blurView];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.playerDetailViewController = [storyboard instantiateViewControllerWithIdentifier:@"playerDetailViewController"];
    self.playerDetailViewController.delegate = self;
    [self.view addSubview:self.playerDetailViewController.view];
}

#pragma mark - Player Details Delegate

- (void)finishEditing {
    [self.blurView removeFromSuperview];
    [self.playerDetailViewController.view removeFromSuperview];
}

@end
