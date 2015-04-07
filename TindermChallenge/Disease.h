//
//  Disease.h
//  TindermChallenge
//
//  Created by Mary Jenel Myers on 4/7/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface Disease : NSObject

@property UIImage *diseaseImage;
@property NSString *inflammationType;
@property NSString *diseasePatterns;
@property NSDate *dateOfDisease;
@property NSString *timeOfDisease;
@property NSString *diseaseName;

@property UIImage *overviewImage;

@property NSString *gender;
@property NSString *age;
@property NSString *duration;
@property NSString *caseDetails;
-(instancetype)initWithinflammationType:(NSString *)inflammationType diseasePatters:(NSString *)diseasePatters eachDiseaseImage:(UIImage *)image dateOfDisease:(NSDate *)dateOfDisease timeOfDisease:(NSString *)timeOfDisease overviewImage:(UIImage *)overviewImage gender:(NSString *)gender age:(NSString *)age duration:(NSString *)duration caseDetails:(NSString *)caseDetails;


@end
