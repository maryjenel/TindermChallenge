//
//  CaseDetailsViewController.m
//  TindermChallenge
//
//  Created by Mary Jenel Myers on 4/7/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import "CaseDetailsViewController.h"

@interface CaseDetailsViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *overviewImageView;
@property (weak, nonatomic) IBOutlet UIImageView *closeUpImageView;
@property (weak, nonatomic) IBOutlet UILabel *genderLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UILabel *durationLabel;
@property (weak, nonatomic) IBOutlet UITextView *caseDetailTextView;

@end

@implementation CaseDetailsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"iDoc24Logo"]];
    self.closeUpImageView.image = self.disease.diseaseImage;
    self.overviewImageView.image = self.disease.overviewImage;
    self.genderLabel.text = self.disease.gender;
    self.ageLabel.text = self.disease.age;
    self.durationLabel.text = self.disease.duration;
    self.caseDetailTextView.text = self.disease.caseDetails;
    
    
}



@end
