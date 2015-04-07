//
//  Disease.m
//  TindermChallenge
//
//  Created by Mary Jenel Myers on 4/7/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import "Disease.h"

@implementation Disease

-(instancetype)initWithinflammationType:(NSString *)inflammationType diseasePatters:(NSString *)diseasePatters eachDiseaseImage:(UIImage *)image dateOfDisease:(NSDate *)dateOfDisease timeOfDisease:(NSString *)timeOfDisease overviewImage:(UIImage *)overviewImage gender:(NSString *)gender age:(NSString *)age duration:(NSString *)duration caseDetails:(NSString *)caseDetails
{
    self = [super init];
    if (self) {
        self.diseaseImage = image;
        self.inflammationType = inflammationType;
        self.diseasePatterns = diseasePatters;
        self.dateOfDisease = dateOfDisease;
        self.timeOfDisease = timeOfDisease;
        self.overviewImage =overviewImage;
        self.gender = gender;
        self.age = age;
        self.duration = duration;
        self.caseDetails = caseDetails;

    }
    return self;
}

@end
