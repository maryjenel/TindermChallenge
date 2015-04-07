//
//  Disease.m
//  TindermChallenge
//
//  Created by Mary Jenel Myers on 4/6/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import "PatientData.h"

@implementation PatientData
-(instancetype)initWithPatientInfo:(NSString *)patientInfo durationPeriod:(NSString *)durationPeriod eachDiseaseImage:(UIImage *)image
{
    self = [super init];
    if (self) {
        self.patientInfo = patientInfo;
        self.durationPeriod =durationPeriod;
        self.diseaseImage= image;
    }
    return self;
}

@end
