//
//  FavoriteAnswersViewController.m
//  TindermChallenge
//
//  Created by Mary Jenel Myers on 4/6/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import "FavoriteAnswersViewController.h"
#import "SWRevealViewController.h"

@interface FavoriteAnswersViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UIBarButtonItem *menuButton;
@end

@implementation FavoriteAnswersViewController

- (void)viewDidLoad {
    [super viewDidLoad];
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

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"favoriteCell"];
    return cell;
}

@end
