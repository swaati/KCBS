//
//  AgentLoanViewVC.m
//  KCBS
//
//  Created by YK Software Solutions on 16/12/14.
//  Copyright (c) 2014 YK Software Solutions. All rights reserved.
//
//
//  LoanViewVC.m
//  KCBS
//
//  Created by YK Software Solutions on 24/11/14.
//  Copyright (c) 2014 YK Software Solutions. All rights reserved.
//

#import "AgentLoanViewVC.h"

@interface AgentLoanViewVC()

@end

@implementation AgentLoanViewVC
@synthesize alv_view;
@synthesize alv_lbl;
@synthesize aimgview_agentloanview;

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
    
    self.parentViewController.navigationItem.titleView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"small.png"]];
    alv_view=[[UIView alloc]initWithFrame:CGRectMake(0,65, 320,65)];
    alv_view.backgroundColor=[UIColor colorWithRed:0.976 green:0.459 blue:0.016 alpha:1];
    [self.view addSubview:alv_view];
    alv_lbl= [[UILabel alloc]initWithFrame:CGRectMake(85,20,130,20)];
    alv_lbl.font=[UIFont fontWithName:@"Helvetica" size:16];
    alv_lbl.textColor = [UIColor whiteColor];
    alv_lbl.backgroundColor = [UIColor clearColor];
    alv_lbl.text = @"Loan View";
    [alv_view addSubview:alv_lbl];
    aimgview_agentloanview = [[UIImageView alloc]
                             initWithFrame:CGRectMake(10,12,40,40)];
    [aimgview_agentloanview setImage:[UIImage imageNamed:@"loanViewSIcon.png"]];
    [aimgview_agentloanview setContentMode:UIViewContentModeScaleAspectFit];
    [alv_view addSubview:aimgview_agentloanview];
    myCollapseClick.CollapseClickDelegate = self;
    [myCollapseClick reloadCollapseClick];
    
    // If you want a cell open on load, run this method:
    [myCollapseClick openCollapseClickCellAtIndex:0 animated:NO];
    

    // Do any additional setup after loading the view.
}
-(int)numberOfCellsForCollapseClick {
    return 10;
}
-(NSString *)titleForCollapseClickAtIndex:(int)index {
    //    agent_view=[[UIView alloc]initWithFrame:CGRectMake(0,0, 320,250)];
    //    agent_view.backgroundColor=[UIColor colorWithRed:0.965 green:0.506 blue:0.129 alpha:1];;
    //    [self.view addSubview:agent_view];
    //
    //    name_label=[[UILabel alloc]initWithFrame:CGRectMake(20,20,60,20)];
    //    name_label.font=[UIFont fontWithName:@"Helvetica-Bold" size:16];
    //    name_label.textColor = [UIColor whiteColor];
    //    name_label.backgroundColor = [UIColor clearColor];
    //    name_label.text = @"Name";
    //    [agent_view addSubview:name_label];
    //
    //
    //    UIButton *visit_btn = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    //    //agentloginbtn.layer.cornerRadius = 5;
    //    //    [agentloginbtn addTarget:self
    //    //                      action:@selector(agentloginbtn_Clicked)
    //    //            forControlEvents:UIControlEventTouchUpInside];
    //    [visit_btn setFrame:CGRectMake(20,200,100, 30)];
    //    visit_btn.backgroundColor=[UIColor blackColor];
    //    [visit_btn setTitle:@"VISIT" forState:UIControlStateNormal];
    //    [agent_view addSubview:visit_btn];
    //    UIButton *reminder_btn = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    //    [reminder_btn setFrame:CGRectMake(180,200,120, 30)];
    //    reminder_btn.backgroundColor=[UIColor blackColor];
    //    [reminder_btn setTitle:@"SET REMINDER" forState:UIControlStateNormal];
    //    [agent_view addSubview:reminder_btn];
    
    
    
    switch (index) {
        case 0:
            return @"Loan Details";
            break;
        case 1:
            return @"Payment Details";
            break;
        case 2:
            return @"Last Repayment Details";
            break;
        case 3:
            return @"Overdue Details";
        case 4:
            return @"Loanee Details";
        case 5:
            return @"Other Loan Members";
            
        case 6:
            return @"Recovery Visits";
        case 7:
            return @"Recovery Milestones";
        default:
            return @"";
            break;
    }
}
-(UIView *)viewForCollapseClickContentViewAtIndex:(int)index {
    switch (index) {
        case 0:
            return firstview;
            break;
        case 1:
            return secondview;
            break;
            
        default:
            return NULL;
            break;
    }
}

-(UIColor *)colorForCollapseClickTitleViewAtIndex:(int)index {
    //return [UIColor colorWithRed:0.455 green:0.851 blue:0.996 alpha:1];
    return [UIColor colorWithRed:0.494 green:0.804 blue:0.918 alpha:1];
    
}


-(UIColor *)colorForTitleLabelAtIndex:(int)index {
    //return [UIColor colorWithWhite:1.0 alpha:0.85];
    return [UIColor whiteColor];
}

-(UIColor *)colorForTitleArrowAtIndex:(int)index {
    //return [UIColor colorWithWhite:0.0 alpha:0.25];
    //return [UIColor whiteColor];
    return [UIColor colorWithWhite:0.0 alpha:0.25];
}

-(void)didClickCollapseClickCellAtIndex:(int)index isNowOpen:(BOOL)open {
    NSLog(@"%d and it's open:%@", index, (open ? @"YES" : @"NO"));
}

- (IBAction)buttonClicked:(id)sender {
    firstview.frame = CGRectMake(0, 0, firstview.frame.size.width, firstview.frame.size.height + 50);
    [myCollapseClick setNeedsLayout];
}

#pragma mark - TextField Delegate for Demo
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

// Example of change content view frame and then update collapseClick layout.






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
