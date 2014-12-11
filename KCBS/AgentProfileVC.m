//
//  AgentProfileVC.m
//  KCBS
//
//  Created by YK Software Solutions on 22/11/14.
//  Copyright (c) 2014 YK Software Solutions. All rights reserved.
//

#import "AgentProfileVC.h"

@interface AgentProfileVC ()

@end

@implementation AgentProfileVC
@synthesize agent_view;
@synthesize name_lbl;
@synthesize desig_lbl;
@synthesize agentdetails_tv;
@synthesize agentdetails_array;
@synthesize btnfirst;
@synthesize btnsecond;
@synthesize btnthird;
@synthesize btnfourth;
@synthesize controlGroup;
@synthesize imgview_agentpro;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor colorWithRed:0.325 green:0.816 blue:1 alpha:1];

    //[self.navigationController setTitleView:[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"small.png"]]];
 //self.tabBarItem.title =@"AgentProfileVC";
//     controlGroup = [[ControlGroup alloc] init];
    //[self.navigationController  ];
    //self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"small.png"]];
    //self.navigationController.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"small.png"]];
    //self.view.backgroundColor=[UIColor redColor];
//    //self.title=@"Agent Profile";
    
    //self.navigationController.navigationBarHidden = YES;
    self.parentViewController.navigationItem.titleView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"small.png"]];
   agent_view=[[UIView alloc]initWithFrame:CGRectMake(0,65, 320,65)];
   agent_view.backgroundColor=[UIColor colorWithRed:0.965 green:0.506 blue:0.129 alpha:1];;
    [self.view addSubview:agent_view];
    imgview_agentpro = [[UIImageView alloc]
                     initWithFrame:CGRectMake(10,12,40,40)];
    [imgview_agentpro setImage:[UIImage imageNamed:@"agentprofileSIcon.png"]];
    [imgview_agentpro setContentMode:UIViewContentModeScaleAspectFit];
    [agent_view addSubview:imgview_agentpro];

    
    
    
    name_lbl= [[UILabel alloc]initWithFrame:CGRectMake(85,12,100,20)];
    name_lbl.font=[UIFont fontWithName:@"Helvetica" size:16];
   name_lbl.textColor = [UIColor whiteColor];
    name_lbl.backgroundColor = [UIColor clearColor];
    name_lbl.text = @"Swati Rout";
    [agent_view addSubview:name_lbl];
    desig_lbl=[[UILabel alloc]initWithFrame:CGRectMake(85,30,200,20)];
   desig_lbl.font=[UIFont fontWithName:@"Helvetica-Bold" size:12];
    desig_lbl.textColor = [UIColor whiteColor];
   desig_lbl.backgroundColor = [UIColor clearColor];
    desig_lbl.text = @"Loan recovery Agent";
   [agent_view addSubview:desig_lbl];
    agentdetails_array= @[@"0", @"1", @"2",@"3",@"4"];
    agentdetails_tv =[[UITableView alloc] initWithFrame:CGRectMake(0,131,320,200) style:UITableViewStylePlain];
  [agentdetails_tv setSeparatorStyle: UITableViewCellSeparatorStyleSingleLine];
   agentdetails_tv.dataSource = self;
        agentdetails_tv.delegate = self;
    agentdetails_tv.scrollEnabled = YES;
  [self.view addSubview:agentdetails_tv];
//    btnfirst = [UIButton buttonWithType: UIButtonTypeCustom];
//    //btn1.tag = 1;
//    [btnfirst setBackgroundImage:[UIImage imageNamed:
//                              @"tennis18.png"]
//                    forState:UIControlStateNormal];
//    [btnfirst setBackgroundImage:[UIImage imageNamed:
//                              @"trophy45.png"]
//                        forState:UIControlStateSelected];
//    [self.controlGroup addControl:btnfirst];
//   
//    [btnfirst setBackgroundColor: [UIColor lightGrayColor]];
//    [btnfirst setFrame:CGRectMake(0,510,80,60)];
//    
//    [self.view addSubview:btnfirst];
//    btnsecond = [UIButton buttonWithType: UIButtonTypeCustom];
//    //btn1.tag = 1;
//    [btnsecond setBackgroundImage:[UIImage imageNamed:
//                                  @"walking17.png"]
//                        forState:UIControlStateNormal];
//    [btnsecond setBackgroundImage:[UIImage imageNamed:
//                                  @"man271.png"]
//                        forState:UIControlStateSelected];
//    [self.controlGroup addControl:btnsecond];
//    
//    [btnsecond setBackgroundColor: [UIColor lightGrayColor]];
//    [btnsecond setFrame:CGRectMake(80,510,80,60)];
//    
//    [self.view addSubview:btnsecond];
//    btnthird = [UIButton buttonWithType: UIButtonTypeCustom];
//    //btn1.tag = 1;
//    [btnthird setBackgroundImage:[UIImage imageNamed:
//                                   @"three115.png"]
//                         forState:UIControlStateNormal];
//    [btnthird setBackgroundImage:[UIImage imageNamed:
//                                   @"magnifying4.png"]
//                         forState:UIControlStateSelected];
//    [self.controlGroup addControl:btnthird];
//    
//    [btnthird setBackgroundColor: [UIColor lightGrayColor]];
//    [btnthird setFrame:CGRectMake(160,510,80,60)];
//    
//    [self.view addSubview:btnthird];
//    
//    
//    
//    
//    
//    btnfourth = [UIButton buttonWithType: UIButtonTypeCustom];
//    //btn1.tag = 1;
//    [btnfourth setBackgroundImage:[UIImage imageNamed:
//                                  @"walking17.png"]
//                        forState:UIControlStateNormal];
//    [btnfourth setBackgroundImage:[UIImage imageNamed:
//                                  @"man271.png"]
//                        forState:UIControlStateSelected];
//    [self.controlGroup addControl:btnfourth];
//    
//    [btnfourth setBackgroundColor: [UIColor lightGrayColor]];
//    [btnfourth setFrame:CGRectMake(240,510,80,60)];
//    
//    [self.view addSubview:btnfourth];
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
   
    return 50;
    //return [agentdetails_array count];
    //
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 40.0;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
    }
    
   if( [indexPath row] % 2)
   [cell setBackgroundColor:[UIColor colorWithRed:0.325 green:0.816 blue:1 alpha:1]];
    else
      [cell setBackgroundColor:[UIColor colorWithRed:0.455 green:0.851 blue:0.996 alpha:1]];
    //[cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
//    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 10, 30, 30)];
//    cell.imageView.image = imgView.image;
//    cell.imageView.backgroundColor=[UIColor clearColor];
//    cell.imageView.layer.cornerRadius = 5.0;
//    cell.imageView.layer.borderColor = [[UIColor colorWithRed:(38/255.f) green:(171/255.f) blue:(226/255.f) alpha:1.0f] CGColor];
//    cell.imageView.layer.borderWidth = 1;
//    cell.imageView.layer.masksToBounds = YES;
    UILabel *lblCell=[[UILabel alloc]initWithFrame:CGRectMake(40, 10, 300, 20)];
//lblCell.backgroundColor=[UIColor colorWithRed:0.302 green:0.569 blue:0.749 alpha:1];
 lblCell.font=[UIFont fontWithName:@"HelveticaNeue" size:12.0];
//    
   lblCell.textColor=[UIColor blackColor];
    
    if (indexPath.row==0)
    {
       lblCell.text=@"Completed Recovery Visits        : 10";
      [cell.contentView addSubview:lblCell];
//        //        //[cell.contentView addSubview:lblCellLine];
//        //        imgView.image = [UIImage imageNamed:@"house.png"];
//        //        imgView.frame=CGRectMake(20, 8, 30, 30);
//        //        [cell.contentView addSubview:imgView];
//        imgView.image = [UIImage imageNamed:@"img.png"];
//        imgView.frame=CGRectMake(20, 8, 30, 30);
//        
//        [cell.contentView addSubview:imgView];
//        
//        lblCell.text=@"AGENT LOGIN";
//        [cell.contentView addSubview:lblCell];
//        //[cell.contentView addSubview:lblCellLine];
//        //imgView.image = [UIImage imageNamed:@"search_new.png"];
//        //imgView.frame=CGRectMake(20-2, 12+2, 25, 25);
//        //[cell.contentView addSubview:imgView];
//        
//        
    }
    else if (indexPath.row==1)
    {
        
        lblCell.text=@"Unsuccessful Recovery Visits     : 2";
        [cell.contentView addSubview:lblCell];
//        imgView.image = [UIImage imageNamed:@"img.png"];
//        imgView.frame=CGRectMake(20, 8, 30, 30);
//        
//        [cell.contentView addSubview:imgView];
//        lblCell.text=@"CUSTOMER LOGIN";
//        [cell.contentView addSubview:lblCell];
//        //[cell.contentView addSubview:lblCellLine];
//        //imgView.image = [UIImage imageNamed:@"listicon_new.png"];
//        //imgView.frame=CGRectMake(20-2, 12, 25, 25);
//        //[cell.contentView addSubview:imgView];
//        
//        
//        //        lblCell.text=@"Profile";
//        //        [cell.contentView addSubview:lblCell];
//        //        [cell.contentView addSubview:lblCellLine];
//        //        //imgView.image = [UIImage imageNamed:@"profiles.png"];
//        //        //imgView.image = [UIImage imageNamed:@"setting_new.png"];
//        //        imgView.image = [UIImage imageNamed:@"smallProfile_new.png"];
//        //        imgView.frame=CGRectMake(20, 14, 25, 25);
//        //
//        //        [cell.contentView addSubview:imgView];
    }
    else if (indexPath.row==2)
    {
        
        lblCell.text=@"Pending Recovery Visits             : 25";
        [cell.contentView addSubview:lblCell];
//        imgView.image = [UIImage imageNamed:@"img.png"];
//        imgView.frame=CGRectMake(20, 8, 30, 30);
//        
//        [cell.contentView addSubview:imgView];
//        lblCell.text=@"BRANCH LOCATOR";
//        [cell.contentView addSubview:lblCell];
    }
    else if (indexPath.row==3)
  {
      lblCell.text=@"Account recovered                     : Rs 50,000";
      [cell.contentView addSubview:lblCell];
//        imgView.image = [UIImage imageNamed:@"img.png"];
//        imgView.frame=CGRectMake(20, 8, 30, 30);
//        
//        [cell.contentView addSubview:imgView];
//        lblCell.text=@"CONTACT US";
//        [cell.contentView addSubview:lblCell];
    }
    else if (indexPath.row==4)
    {
        lblCell.text=@"Allowance                                   : Rs 400";
        [cell.contentView addSubview:lblCell];
//        imgView.image = [UIImage imageNamed:@"img.png"];
//        imgView.frame=CGRectMake(20, 8, 30, 30);
//        
//        [cell.contentView addSubview:imgView];
//        lblCell.text=@"FEEDBACK";
//        [cell.contentView addSubview:lblCell];
   }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    
    
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
