//
//  AnimationLabel.h
//  TindermChallenge
//
//  Created by Mary Jenel Myers on 4/7/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AnimationLabel : UILabel
/**
 * Fade in text animation duration. Defaults to 2.5.
 */
@property (assign, nonatomic, readwrite) CFTimeInterval shineDuration;
/**
 * Fade out duration. Defaults to 2.5.
 */
@property (assign, nonatomic, readwrite) CFTimeInterval fadeoutDuration;
/**
 * Auto start the animation. Defaults to NO.
 */
@property (assign, nonatomic, readwrite, getter = isAutoStart) BOOL autoStart;
/**
 * Check if the animation is finished
 */
@property (assign, nonatomic, readonly, getter = isShining) BOOL shining;
/**
 * Check if visible
 */
@property (assign, nonatomic, readonly, getter = isVisible) BOOL visible;
/**
 * Start the animation
 */
- (void)shine;
- (void)shineWithCompletion:(void (^)())completion;
- (void)fadeOut;
- (void)fadeOutWithCompletion:(void (^)())completion;

@end
