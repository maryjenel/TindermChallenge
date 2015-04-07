//
//  DraggableView.h
//  TindermChallenge
//
//  Created by Mary Jenel Myers on 4/6/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OverlayView.h"



@protocol DraggableViewDelegate <NSObject>
-(void)cardSwipedLeft:(UIView *)card;
-(void)cardSwipedRight:(UIView *)card;

@end
@interface DraggableView : UIView

@property (weak) id <DraggableViewDelegate> delegate;

@property (nonatomic, strong)UIPanGestureRecognizer *panGestureRecognizer;
@property (nonatomic)CGPoint originalPoint;
@property (nonatomic,strong)OverlayView* overlayView;




@property IBOutlet UIImageView *patientImageView;
@property IBOutlet UILabel *patientInfoLabel;
@property IBOutlet UILabel *durationPeriodLabel;


-(void)leftClickAction;
-(void)rightClickAction;

@end
