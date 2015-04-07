//
//  CaseHistoryTableViewCell.h
//  TindermChallenge
//
//  Created by Mary Jenel Myers on 4/7/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CaseHistoryTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *caseImageView;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *inflammationLabel;
@property (weak, nonatomic) IBOutlet UILabel *diseasePatternLabel;

@end
