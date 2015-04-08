//
//  CaseHistoryViewController.m
//  TindermChallenge
//
//  Created by Mary Jenel Myers on 4/6/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import "CaseHistoryViewController.h"
#import "SWRevealViewController.h"
#import "CaseHistoryTableViewCell.h"
#import "Disease.h"
#import "CaseDetailsViewController.h"

@interface CaseHistoryViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UIBarButtonItem *menuButton;
@property NSArray *caseHistoryArray;
@property (weak, nonatomic) IBOutlet UITableView *myTableView;



@end

@implementation CaseHistoryViewController

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
    //can change time to NSDate or time intervals using date formatter
    Disease *disease1 = [[Disease alloc]initWithinflammationType:@"Cafe Au Lait" diseasePatters:@"Spots" eachDiseaseImage:[UIImage imageNamed:@"cafeAuLait"] dateOfDisease:[NSDate date] timeOfDisease:@"3:30PM Local Time" overviewImage:[UIImage imageNamed:@"cafeOverviewImage"] gender:@"Female" age:@"25" duration:@"25 Years" caseDetails:@"I have had these spots since birth. It started small, but has been growing the past couple years"];
     Disease *disease2 = [[Disease alloc]initWithinflammationType:@"Dermatitis" diseasePatters:@"Atopic" eachDiseaseImage:[UIImage imageNamed:@"atopicDermatitis"] dateOfDisease:[NSDate date] timeOfDisease:@"12:30PM Local Time" overviewImage:[UIImage imageNamed:@"atopicDermatitisOverview"] gender:@"Male" age:@"50" duration:@"2 Months" caseDetails:@"These red itchy spots are the worst! They get really bad when I am in the sun."];
     Disease *disease3 = [[Disease alloc]initWithinflammationType:@"Urticaria" diseasePatters:@"Hives" eachDiseaseImage:[UIImage imageNamed:@"Hives"] dateOfDisease:[NSDate date] timeOfDisease:@"4:30PM Local Time" overviewImage:[UIImage imageNamed:@"hivesOverview"] gender:@"Male" age:@"15" duration:@"1 Month" caseDetails:@"These bumpy, red itchy spots are the worst! They get really bad when I eat spicy food."];
     Disease *disease4 = [[Disease alloc]initWithinflammationType:@"Erythematosus" diseasePatters:@"Lupus" eachDiseaseImage:[UIImage imageNamed:@"lupus"] dateOfDisease:[NSDate date] timeOfDisease:@"1:30PM Local Time" overviewImage:[UIImage imageNamed:@"lupusOverview"] gender:@"female" age:@"20" duration:@"1 Month" caseDetails:@"I've been getting very tired and have a lot of joint pain. This red rash looks like a butterfly on my face."];


    self.caseHistoryArray = [[NSArray alloc]initWithObjects:disease1,disease2,disease3,disease4, nil];
    

}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.caseHistoryArray.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CaseHistoryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    Disease *currentDisease = [self.caseHistoryArray objectAtIndex:indexPath.row];
    NSDateFormatter* formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = @"MMMM dd, yyyy";
    NSString *dateString = [formatter stringFromDate:currentDisease.dateOfDisease];
    cell.caseImageView.image = currentDisease.diseaseImage;

    cell.dateLabel.text = dateString;
    cell.timeLabel.text = currentDisease.timeOfDisease;
    cell.inflammationLabel.text = currentDisease.inflammationType;
    cell.diseasePatternLabel.text = currentDisease.diseasePatterns;
    return cell;
}

//passing the disease over
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"caseSegue"])
    {
        CaseDetailsViewController *vc = segue.destinationViewController;
        Disease *currentDisease = [self.caseHistoryArray objectAtIndex:[self.myTableView indexPathForCell:sender].row];
        //getting the object from the cell selected
        vc.disease = currentDisease;
    }
}

@end
