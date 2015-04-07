//
//  Disease.h
//  TindermChallenge
//
//  Created by Mary Jenel Myers on 4/6/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PatientData : NSObject

@property UIImage *diseaseImage;
@property NSString *durationPeriod;
@property NSString *patientInfo;

-(instancetype)initWithPatientInfo:(NSString *)PatientInfo durationPeriod:(NSString *)durationPeriod eachDiseaseImage:(UIImage *)image;

@end
