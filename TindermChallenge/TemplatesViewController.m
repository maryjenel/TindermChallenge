//
//  TemplatesViewController.m
//  TindermChallenge
//
//  Created by Mary Jenel Myers on 4/7/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import "TemplatesViewController.h"
#import "Disease.h"

@interface TemplatesViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *diseaseTableView;
@property NSArray *diseaseArray;
@property NSString *diseaseName;
@end

@implementation TemplatesViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.diseaseArray = @[@"Alopecia areata",@"Amyloidosis",@"Ankylosing spondylitis",@"Balo disease",@"Behcet’s disease",@"Cardiomyopathy",@"Castleman disease",@"Celiac disease",@"Chagas disease",@"Crohn’s disease",@"Endometriosis",@"Evans syndrome",@"Fibrosing alveolitis",@"Giant cell myocarditis",@"Hemolytic anemia",@"Juvenile myositis"];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];

    cell.textLabel.text = self.diseaseArray[indexPath.row];
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.diseaseArray.count;

}





/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
