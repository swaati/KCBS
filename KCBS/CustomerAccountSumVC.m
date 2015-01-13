//
//  CustomerAccountSumVC.m
//  KCBS
//
//  Created by YK Software Solutions on 05/12/14.
//  Copyright (c) 2014 YK Software Solutions. All rights reserved.
//

#import "CustomerAccountSumVC.h"

@interface CustomerAccountSumVC ()

@end

@implementation CustomerAccountSumVC
@synthesize cusacc_view;
@synthesize welcome_label;
@synthesize name_label;
@synthesize imgview_customacc;
@synthesize savingsacc_view;
@synthesize fixeddeposit_view;
@synthesize savingac_lbl;
@synthesize savingac_lblblue;
@synthesize savingopendate_lbl;
@synthesize savingopendate_lblblue;
@synthesize savingbalance_lbl;
@synthesize savingbalance_lblblue;
@synthesize savingstatus_lbl;
@synthesize savingstatus_lblblue;

@synthesize fixedaccno_lbl;
@synthesize fixedaccno_lblbllue;
@synthesize fixedopendate_lbl;
@synthesize fixedopendate_lblbllue;
@synthesize fixeddepttype_lbl;
@synthesize fixeddepttype_lblblue;
@synthesize fixedamount_lbl;
@synthesize fixedamount_lblblue;
@synthesize fixedstatus_lbl;
@synthesize fixedstatus_lblblue;
//@synthesize cusname_label;

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
    cusacc_view=[[UIView alloc]initWithFrame:CGRectMake(0,65, 320,65)];
    cusacc_view.backgroundColor=[UIColor colorWithRed:0.965 green:0.506 blue:0.129 alpha:1];
    [self.view addSubview:cusacc_view];
    welcome_label= [[UILabel alloc]initWithFrame:CGRectMake(100,20,130,20)];
    welcome_label.font=[UIFont fontWithName:@"Helvetica-Bold" size:16];
   welcome_label.textColor = [UIColor whiteColor];
    
   welcome_label.text = @"Welcome";
   [cusacc_view addSubview:welcome_label];
    name_label= [[UILabel alloc]initWithFrame:CGRectMake(100,40,100,20)];
    name_label.font=[UIFont fontWithName:@"Helvetica-Bold" size:14];
    name_label.textColor = [UIColor whiteColor];
    name_label.backgroundColor = [UIColor clearColor];
    name_label.text = @"Swati Rout";
    [cusacc_view addSubview:name_label];
    imgview_customacc = [[UIImageView alloc]
                         initWithFrame:CGRectMake(12,15,40,40)];
    [imgview_customacc setImage:[UIImage imageNamed:@"agentprofileSIcon.png"]];
    [imgview_customacc setContentMode:UIViewContentModeScaleAspectFit];
    [cusacc_view addSubview:imgview_customacc];
    myCollapseClick.CollapseClickDelegate = self;
    [myCollapseClick reloadCollapseClick];
    
    // If you want a cell open on load, run this method:
    [myCollapseClick openCollapseClickCellAtIndex:1 animated:NO];
    

    // Do any additional setup after loading the view from its nib.
}
-(int)numberOfCellsForCollapseClick {
    return 30;
}
-(NSString *)titleForCollapseClickAtIndex:(int)index {
//    @synthesize savingsacc_view;
//    @synthesize fixeddeposit_view;
//    @synthesize savingac_lbl;
//    @synthesize savingac_lblblue;
//    @synthesize savingopendate_lbl;
//    @synthesize savingopendate_lblblue;
//    @synthesize savingbalance_lbl;
//    @synthesize savingbalance_lblblue;
//    @synthesize savingstatus_lbl;
//    @synthesize savingstatus_lblblue;
//    
//    @synthesize fixedaccno_lbl;
//    @synthesize fixedaccno_lblbllue;
//    @synthesize fixedopendate_lbl;
//    @synthesize fixedopendate_lblbllue;
//    @synthesize fixeddepttype_lbl;
//    @synthesize fixeddepttype_lblblue;
//    @synthesize fixedamount_lbl;
//    @synthesize fixedamount_lblblue;
//    @synthesize fixedstatus_lbl;
//    @synthesize fixedstatus_lblblue;
    savingsacc_view=[[UIView alloc]initWithFrame:CGRectMake(0,0, 320,110)];
      // savingsacc_view.backgroundColor=[UIColor colorWithRed:0.965 green:0.506 blue:0.129 alpha:1];;
      //[self.view addSubview:savingsacc_view];
    savingac_lbl=[[UILabel alloc]initWithFrame:CGRectMake(20,10,140,20)];
    savingac_lbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    savingac_lbl.textColor = [UIColor blackColor];
    savingac_lbl.backgroundColor = [UIColor clearColor];
    savingac_lbl.text = @"Ac No";
    [savingsacc_view addSubview:savingac_lbl];
    savingac_lblblue=[[UILabel alloc]initWithFrame:CGRectMake(160,10,140,20)];
    savingac_lblblue.backgroundColor=[UIColor blueColor];
    savingac_lblblue.font=[UIFont fontWithName:@"Helvetica" size:14];
    savingac_lblblue.textColor = [UIColor blackColor];
    savingac_lblblue.backgroundColor = [UIColor colorWithRed:0.208 green:0.682 blue:0.949 alpha:1];
    savingac_lblblue.text = @"AP-001-SB-000448";
    [savingsacc_view addSubview:savingac_lblblue];
    
    
    savingopendate_lbl=[[UILabel alloc]initWithFrame:CGRectMake(20,35,140,20)];
    savingopendate_lbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    savingopendate_lbl.textColor = [UIColor blackColor];
    savingopendate_lbl.backgroundColor = [UIColor clearColor];
    savingopendate_lbl.text = @"Open Date";
    [savingsacc_view addSubview:savingopendate_lbl];
    savingopendate_lblblue=[[UILabel alloc]initWithFrame:CGRectMake(160,35,140,20)];
    savingopendate_lblblue.backgroundColor=[UIColor blueColor];
    savingopendate_lblblue.font=[UIFont fontWithName:@"Helvetica" size:14];
    savingopendate_lblblue.textColor = [UIColor blackColor];
    savingopendate_lblblue.backgroundColor = [UIColor colorWithRed:0.208 green:0.682 blue:0.949 alpha:1];
    savingopendate_lblblue.text = @"13 Nov 1999";
    [savingsacc_view addSubview:savingopendate_lblblue];
    
    
    savingbalance_lbl=[[UILabel alloc]initWithFrame:CGRectMake(20,60,140,20)];
    savingbalance_lbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    savingbalance_lbl.textColor = [UIColor blackColor];
    savingbalance_lbl.backgroundColor = [UIColor clearColor];
    savingbalance_lbl.text = @"Balance";
    [savingsacc_view addSubview:savingbalance_lbl];
    savingbalance_lblblue=[[UILabel alloc]initWithFrame:CGRectMake(160,60,140,20)];
    savingbalance_lblblue.backgroundColor=[UIColor blueColor];
    savingbalance_lblblue.font=[UIFont fontWithName:@"Helvetica" size:14];
    savingbalance_lblblue.textColor = [UIColor blackColor];
    savingbalance_lblblue.backgroundColor = [UIColor colorWithRed:0.208 green:0.682 blue:0.949 alpha:1];
    savingbalance_lblblue.text = @"Rs 354";
    [savingsacc_view addSubview:savingbalance_lblblue];
    
    
    savingstatus_lbl=[[UILabel alloc]initWithFrame:CGRectMake(20,85,140,20)];
    savingstatus_lbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    savingstatus_lbl.textColor = [UIColor blackColor];
    savingstatus_lbl.backgroundColor = [UIColor clearColor];
    savingstatus_lbl.text = @"Status";
    [savingsacc_view addSubview:savingstatus_lbl];
    savingstatus_lblblue=[[UILabel alloc]initWithFrame:CGRectMake(160,85,140,20)];
    savingstatus_lblblue.backgroundColor=[UIColor blueColor];
    savingstatus_lblblue.font=[UIFont fontWithName:@"Helvetica" size:14];
    savingstatus_lblblue.textColor = [UIColor blackColor];
    savingstatus_lblblue.backgroundColor = [UIColor colorWithRed:0.208 green:0.682 blue:0.949 alpha:1];
    savingstatus_lblblue.text = @"Approved";
    [savingsacc_view addSubview:savingstatus_lblblue];
    
    
    //for fixeddeposit
    fixeddeposit_view=[[UIView alloc]initWithFrame:CGRectMake(0,0, 320,130)];
    // savingsacc_view.backgroundColor=[UIColor colorWithRed:0.965 green:0.506 blue:0.129 alpha:1];;
    //[self.view addSubview:savingsacc_view];
    fixedaccno_lbl=[[UILabel alloc]initWithFrame:CGRectMake(20,10,140,20)];
    fixedaccno_lbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    fixedaccno_lbl.textColor = [UIColor blackColor];
    fixedaccno_lbl.backgroundColor = [UIColor clearColor];
    fixedaccno_lbl.text = @"Ac No";
    [fixeddeposit_view addSubview:fixedaccno_lbl];
    fixedaccno_lblbllue=[[UILabel alloc]initWithFrame:CGRectMake(160,10,140,20)];
    fixedaccno_lblbllue.backgroundColor=[UIColor blueColor];
    fixedaccno_lblbllue.font=[UIFont fontWithName:@"Helvetica" size:14];
    fixedaccno_lblbllue.textColor = [UIColor blackColor];
    fixedaccno_lblbllue.backgroundColor = [UIColor colorWithRed:0.208 green:0.682 blue:0.949 alpha:1];
    fixedaccno_lblbllue.text = @"AP-001-FD-I-154";
    [fixeddeposit_view addSubview:fixedaccno_lblbllue];
    
    
    fixedopendate_lbl=[[UILabel alloc]initWithFrame:CGRectMake(20,35,140,20)];
    fixedopendate_lbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    fixedopendate_lbl.textColor = [UIColor blackColor];
    fixedopendate_lbl.backgroundColor = [UIColor clearColor];
    fixedopendate_lbl.text = @"Open Date";
    [fixeddeposit_view addSubview:fixedopendate_lbl];
    fixedopendate_lblbllue=[[UILabel alloc]initWithFrame:CGRectMake(160,35,140,20)];
    fixedopendate_lblbllue.backgroundColor=[UIColor blueColor];
    fixedopendate_lblbllue.font=[UIFont fontWithName:@"Helvetica" size:14];
    fixedopendate_lblbllue.textColor = [UIColor blackColor];
    fixedopendate_lblbllue.backgroundColor = [UIColor colorWithRed:0.208 green:0.682 blue:0.949 alpha:1];
    fixedopendate_lblbllue.text = @"13 Nov 1999";
    [fixeddeposit_view addSubview:fixedopendate_lblbllue];
    
    
    fixeddepttype_lbl=[[UILabel alloc]initWithFrame:CGRectMake(20,60,140,20)];
    fixeddepttype_lbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    fixeddepttype_lbl.textColor = [UIColor blackColor];
    fixeddepttype_lbl.backgroundColor = [UIColor clearColor];
    fixeddepttype_lbl.text = @"Dept type";
    [fixeddeposit_view addSubview:fixeddepttype_lbl];
    fixeddepttype_lblblue=[[UILabel alloc]initWithFrame:CGRectMake(160,60,140,20)];
    fixeddepttype_lblblue.backgroundColor=[UIColor blueColor];
    fixeddepttype_lblblue.font=[UIFont fontWithName:@"Helvetica" size:14];
    fixeddepttype_lblblue.textColor = [UIColor blackColor];
    fixeddepttype_lblblue.backgroundColor = [UIColor colorWithRed:0.208 green:0.682 blue:0.949 alpha:1];
    fixeddepttype_lblblue.text = @"CUML";
    [fixeddeposit_view addSubview:fixeddepttype_lblblue];
    
    
    fixedamount_lbl=[[UILabel alloc]initWithFrame:CGRectMake(20,85,140,20)];
    fixedamount_lbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    fixedamount_lbl.textColor = [UIColor blackColor];
    fixedamount_lbl.backgroundColor = [UIColor clearColor];
    fixedamount_lbl.text = @"Amount";
    [fixeddeposit_view addSubview:fixedamount_lbl];
    fixedamount_lblblue=[[UILabel alloc]initWithFrame:CGRectMake(160,85,140,20)];
    fixedamount_lblblue.backgroundColor=[UIColor blueColor];
    fixedamount_lblblue.font=[UIFont fontWithName:@"Helvetica" size:14];
    fixedamount_lblblue.textColor = [UIColor blackColor];
    fixedamount_lblblue.backgroundColor = [UIColor colorWithRed:0.208 green:0.682 blue:0.949 alpha:1];
    fixedamount_lblblue.text = @"Rs500";
    [fixeddeposit_view addSubview:fixedamount_lblblue];
    
    


    
    
    
    
    fixedstatus_lbl=[[UILabel alloc]initWithFrame:CGRectMake(20,110,140,20)];
    fixedstatus_lbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    fixedstatus_lbl.textColor = [UIColor blackColor];
    fixedstatus_lbl.backgroundColor = [UIColor clearColor];
    fixedstatus_lbl.text = @"Status";
    [fixeddeposit_view addSubview:fixedstatus_lbl];
    fixedstatus_lblblue=[[UILabel alloc]initWithFrame:CGRectMake(160,110,140,20)];
    fixedstatus_lblblue.backgroundColor=[UIColor blueColor];
    fixedstatus_lblblue.font=[UIFont fontWithName:@"Helvetica" size:14];
    fixedstatus_lblblue.textColor = [UIColor blackColor];
    fixedstatus_lblblue.backgroundColor = [UIColor colorWithRed:0.208 green:0.682 blue:0.949 alpha:1];
    fixedstatus_lblblue.text = @"Approved";
    [fixeddeposit_view addSubview:fixedstatus_lblblue];

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
            return @"Savings Account";
            break;
        case 1:
            return @"Fixed Deposits";
            break;
        case 2:
            return @"Recurring Deposits";
            break;
        case 3:
            return @"Loans";
        default:
            return @"";
            break;
    }
}
-(UIView *)viewForCollapseClickContentViewAtIndex:(int)index {
    switch (index) {
        case 0:
            return savingsacc_view;
            break;
        case 1:
           return fixeddeposit_view;
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


#pragma mark - TextField Delegate for Demo
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

// Example of change content view frame and then update collapseClick layout.
- (IBAction)buttonClicked:(id)sender {
   // test1View.frame = CGRectMake(0, 0, test1View.frame.size.width, test1View.frame.size.height + 50);
    [myCollapseClick setNeedsLayout];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
