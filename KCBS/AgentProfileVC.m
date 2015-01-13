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
@synthesize rowlabel_array;
@synthesize lblcompleterecoveryvisit;
@synthesize lblname_agnt;
@synthesize lblpendingvisit;
@synthesize amountrecovered;
@synthesize recoverybonus;
@synthesize strTotalnumberOfCompletedVisits;
@synthesize strTotalnumberOfPendingVisits;
@synthesize strTotalamountRecovered;
@synthesize strTotalrecoveryBonus;
@synthesize strname_lbl;
@synthesize strTotalnumberOfCompletedVisits_string;
@synthesize strTotalnumberOfPendingVisits_string;
@synthesize strTotalamountRecovered_string;
@synthesize strTotalrecoveryBonus_string;





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
     //NSLog(@"rowlabel_array is%@",rowlabel_array);
    NSLog(@"strTotalnumberOfCompletedVisits is %@",strTotalnumberOfCompletedVisits);
     NSLog(@"strTotalnumberOfPendingVisits is %@",strTotalnumberOfPendingVisits);
    NSLog(@"strTotalamountRecovered is %@",strTotalamountRecovered);
    NSLog(@"strTotalrecoveryBonus is %@",strTotalrecoveryBonus);
    NSLog(@"strname_lbl %@",strTotalamountRecovered);
    
    strTotalnumberOfCompletedVisits_string = [NSString stringWithFormat:@"%@", strTotalnumberOfCompletedVisits];
    NSLog(@"qqqqqqqq %@",strTotalnumberOfCompletedVisits_string);
    strTotalnumberOfPendingVisits_string = [NSString stringWithFormat:@"%@", strTotalnumberOfPendingVisits];
   strTotalamountRecovered_string = [NSString stringWithFormat:@"%@", strTotalamountRecovered];
   strTotalrecoveryBonus_string = [NSString stringWithFormat:@"%@", strTotalrecoveryBonus];

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
    name_lbl.text=lblname_agnt;
   // name_lbl.text = lblpendingvisit;
    [agent_view addSubview:name_lbl];
    desig_lbl=[[UILabel alloc]initWithFrame:CGRectMake(85,30,200,20)];
   desig_lbl.font=[UIFont fontWithName:@"Helvetica-Bold" size:12];
    desig_lbl.textColor = [UIColor whiteColor];
   desig_lbl.backgroundColor = [UIColor clearColor];
    desig_lbl.text = @"Loan recovery Agent";
   [agent_view addSubview:desig_lbl];
   // agentdetails_array= @[@"0", @"1", @"2",@"3",@"4"];
    agentdetails_tv =[[UITableView alloc] initWithFrame:CGRectMake(0,131,320,200) style:UITableViewStylePlain];
  [agentdetails_tv setSeparatorStyle: UITableViewCellSeparatorStyleSingleLine];
   agentdetails_tv.dataSource = self;
        agentdetails_tv.delegate = self;
    agentdetails_tv.scrollEnabled = YES;
  [self.view addSubview:agentdetails_tv];
    
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
    //NSLog([rowlabel_array objectsAtIndexes:0]
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
    }
    
    if( [indexPath row] % 2)
   [cell setBackgroundColor:[UIColor colorWithRed:0.325 green:0.816 blue:1 alpha:1]];
    else
      [cell setBackgroundColor:[UIColor colorWithRed:0.455 green:0.851 blue:0.996 alpha:1]];
    UILabel *heading_lbl=[[UILabel alloc]initWithFrame:CGRectMake(40,10,200, 20)];
    heading_lbl.font=[UIFont fontWithName:@"HelveticaNeue" size:12.0];
    heading_lbl.textColor=[UIColor blackColor];

    UILabel *lblCell=[[UILabel alloc]initWithFrame:CGRectMake(240,10,60, 20)];
//lblCell.backgroundColor=[UIColor colorWithRed:0.302 green:0.569 blue:0.749 alpha:1];
 lblCell.font=[UIFont fontWithName:@"HelveticaNeue" size:12.0];
//    
   lblCell.textColor=[UIColor blackColor];
    
       // lblCell.text=strTotalnumberOfCompletedVisits_string;
    [cell.contentView addSubview:lblCell];
    if (indexPath.row==0)
    {
        heading_lbl.text=@"Number of Completed Visits:";
        [cell.contentView addSubview:heading_lbl];
        lblCell.text=strTotalnumberOfCompletedVisits_string;
        [cell.contentView addSubview:lblCell];
       //lblCell.text=self.strTotalnumberOfCompletedVisits_string;
//        strTotalnumberOfPendingVisits = [@"numberOfPendingVisits      :" stringByAppendingString:lblpendingvisit];
//        lblCell.text=strTotalnumberOfPendingVisits;
     //[cell.contentView addSubview:lblCell];

    }
    else if (indexPath.row==1)
    {
        heading_lbl.text=@"Number of Pending Visits:";
        [cell.contentView addSubview:heading_lbl];
        lblCell.text=strTotalnumberOfPendingVisits_string;
        [cell.contentView addSubview:lblCell];
       
//        strTotalrecoveryBonus = [@"recoveryBonus     :" stringByAppendingString:recoverybonus];
       //lblCell.text=strTotalnumberOfPendingVisits;
//
       //[cell.contentView addSubview:lblCell];

    }
    else if (indexPath.row==2)
    {
        heading_lbl.text=@"Amount Recovered:";
        [cell.contentView addSubview:heading_lbl];
        lblCell.text=strTotalamountRecovered_string;
        [cell.contentView addSubview:lblCell];

        
        
//        strTotalnumberOfCompletedVisits = [@"numberOfCompletedVisits     :" stringByAppendingString:lblcompleterecoveryvisit];
        //lblCell.text=strTotalamountRecovered;
        //[cell.contentView addSubview:lblCell];
    }
    else if (indexPath.row==3)
  {
      heading_lbl.text=@"Recovery Bonus:";
      [cell.contentView addSubview:heading_lbl];
      lblCell.text=strTotalrecoveryBonus_string;
      [cell.contentView addSubview:lblCell];
      

//      strTotalamountRecovered = [@"amountRecovered     :" stringByAppendingString:lblpendingvisit];
      //lblCell.text=strTotalrecoveryBonus;
     //[cell.contentView addSubview:lblCell];

    }

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    NSLog(@"strTotalnumberOfCompletedVisits is %@",strTotalnumberOfCompletedVisits_string);
    
    
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
