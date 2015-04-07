//
//  StatisticsViewController.m
//  TindermChallenge
//
//  Created by Mary Jenel Myers on 4/6/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import "StatisticsViewController.h"
#import "SWRevealViewController.h"
#import "AnimationLabel.h"

@interface StatisticsViewController ()
@property (weak, nonatomic) IBOutlet UIBarButtonItem *menuButton;
@property (weak, nonatomic) IBOutlet AnimationLabel *caseAnsweredLabel;
@property (weak, nonatomic) IBOutlet AnimationLabel *timeAnsweredLabel;
@property (weak, nonatomic) IBOutlet AnimationLabel *diagnosesLabel;
@property NSString *caseText;
@property NSString *timeText;
@property (weak, nonatomic) IBOutlet UILabel *listLabel;
@property NSString *diagnosesText;

@end

@implementation StatisticsViewController


//setting labels
- (id)initWithCoder:(NSCoder *)decoder
{
    if (self = [super initWithCoder:decoder]) {
        _caseText =@"cases answered";
        _timeText =@"average time to answer";
        _diagnosesText =@"top 3 diagnoses";


    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];


//listlabel
    NSArray *listOfDisease = @[@"Eczema", @"Herpes", @"Molluscum"];
    NSString * stringToDisplay = [listOfDisease componentsJoinedByString:@"\n"];
    self.listLabel.text = stringToDisplay;
    //menu button
    _menuButton.target = self.revealViewController;
    _menuButton.action = @selector(revealToggle:);

//swipe gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];

//reveal for menu
    SWRevealViewController *revealViewController = self.revealViewController;
    if (revealViewController)
    {

        [self.menuButton setTarget: self.revealViewController];
        [self.menuButton setAction: @selector(revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
        
    }


}

-(void)viewDidAppear:(BOOL)animated
{
   [super viewDidAppear:animated];
    [self.caseAnsweredLabel shine];
    [self.timeAnsweredLabel shine];
    [self.diagnosesLabel shine];

    // setting labels
    self.caseAnsweredLabel.text = self.caseText;

    self.caseAnsweredLabel.textColor = [UIColor grayColor];
    self.timeAnsweredLabel.text = self.timeText;
        [self.caseAnsweredLabel sizeToFit];
    self.timeAnsweredLabel.textColor = [UIColor grayColor];

    [self.timeAnsweredLabel sizeToFit];
    self.diagnosesLabel.text = self.diagnosesText;
    [self.diagnosesLabel sizeToFit];
   
    self.diagnosesLabel.textColor = [UIColor grayColor];
    self.diagnosesLabel.center = self.view.center;

}


@end
