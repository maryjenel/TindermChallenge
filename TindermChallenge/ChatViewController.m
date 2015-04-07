//
//  ChatViewController.m
//  TindermChallenge
//
//  Created by Mary Jenel Myers on 4/6/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import "ChatViewController.h"
#import "SWRevealViewController.h"
#import "ChatCollectionViewCell.h"

@interface ChatViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UIBarButtonItem *menuButton;
@property NSArray *chatpeopleArray;


@end

@implementation ChatViewController

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

    Doctor *doctor1 = [[Doctor alloc]initWithProfileImage:[UIImage imageNamed:@"JohnPaoli"] name:@"John Paoli"];
    Doctor *doctor2 = [[Doctor alloc]initWithProfileImage:[UIImage imageNamed:@"SebastianSuchanowski"] name:@"Sebastian Suchanowski"];
    Doctor *doctor3 = [[Doctor alloc]initWithProfileImage:[UIImage imageNamed:@"AlexanderBorve"] name:@"Alexander Borve"];

    self.chatpeopleArray = [[NSArray alloc]initWithObjects:doctor1,doctor2,doctor3, nil];
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 3;
}
//-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
//{
//    return 3;
//}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ChatCollectionViewCell *cell =[collectionView dequeueReusableCellWithReuseIdentifier:@"ChatPersonCell" forIndexPath:indexPath ];
    Doctor *doctor = [self.chatpeopleArray objectAtIndex:indexPath.row];
    cell.profileImageView.image = doctor.profileImage;
    cell.nameLabel.lineBreakMode = NSLineBreakByWordWrapping;
    cell.nameLabel.numberOfLines = 0;
    cell.nameLabel.text = doctor.name;

    return cell;
}

@end
