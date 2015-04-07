//
//  ViewController.m
//  TindermChallenge
//
//  Created by Mary Jenel Myers on 4/6/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import "HomeViewController.h"
#import "PatientData.h"
#import "DraggableViewBackground.h"
#import "SWRevealViewController.h"
#import "CaseDetailsViewController.h"

@interface HomeViewController ()
@property DraggableViewBackground *draggableBackground;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *menuButton;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"iDoc24Logo"]];
    self.draggableBackground = [[DraggableViewBackground alloc]initWithFrame:self.view.frame];
    [self.view addSubview:self.draggableBackground];
    [self.view sendSubviewToBack:self.draggableBackground];

    //menu button
    _menuButton.target = self.revealViewController;
    _menuButton.action = @selector(revealToggle:);


    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];


    SWRevealViewController *revealViewController = self.revealViewController;
    if (revealViewController)
    {

        [self.menuButton setTarget: self.revealViewController];
        [self.menuButton setAction: @selector(revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];

    }



}
- (IBAction)onNoButtonPressed:(UIButton *)sender
{

    [self.draggableBackground swipeLeft];
}


- (IBAction)onOkayButtonPressed:(UIButton *)sender
{
     [self.draggableBackground swipeRight];

        UIStoryboard *st = [UIStoryboard storyboardWithName:[[NSBundle mainBundle].infoDictionary objectForKey:@"UIMainStoryboardFile"] bundle:[NSBundle mainBundle]];
        CaseDetailsViewController *cdvc = [st instantiateViewControllerWithIdentifier:@"CaseDetailsViewController"];
        [cdvc setModalPresentationStyle:UIModalPresentationFullScreen]; // remember to change presentation to push or show... not modal

        [self presentViewController:cdvc animated:YES completion:nil];

}

@end
