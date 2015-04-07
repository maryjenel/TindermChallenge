//
//  Doctor.m
//  TindermChallenge
//
//  Created by Mary Jenel Myers on 4/7/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

-(instancetype)initWithProfileImage:(UIImage *)image name:(NSString *)name
{
    self = [super init];
    if (self) {
        self.profileImage = image;
        self.name = name;
    }
    return self;
}
@end
