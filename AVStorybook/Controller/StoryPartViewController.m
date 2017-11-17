//
//  StoryPartViewController.m
//  AVStorybook
//
//  Created by Larry Luk on 2017-11-17.
//  Copyright © 2017 Larry Luk. All rights reserved.
//

#import "StoryPartViewController.h"

@import AVFoundation;

@interface StoryPartViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *cameraBtn;
@property (weak, nonatomic) IBOutlet UIButton *microphoneBtn;
@property (strong, nonatomic) AVAudioPlayer *player;
@property (strong, nonatomic) AVAudioRecorder *recorder;

@end

@implementation StoryPartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageTapped:)];
    [self.imageView addGestureRecognizer:tapGestureRecognizer];
    self.imageView.userInteractionEnabled = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)imageTapped:(UIGestureRecognizer *) sender {
    NSLog(@"Imaged Tapped");
    
}

@end
