//
//  Doctor.h
//  TindermChallenge
//
//  Created by Mary Jenel Myers on 4/7/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface Doctor : NSObject

@property UIImage *profileImage;
@property NSString *name;

-(instancetype)initWithProfileImage:(UIImage *)image name:(NSString *)name;
@end
