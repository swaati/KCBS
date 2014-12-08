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
            return test1View;
            break;
        case 1:
            return test2View;
            break;

       default:
            return NULL;
           break;
    }
}

-(UIColor *)colorForCollapseClickTitleViewAtIndex:(int)index {
    return [UIColor colorWithRed:0.455 green:0.851 blue:0.996 alpha:1];
    
    
}


-(UIColor *)colorForTitleLabelAtIndex:(int)index {
    //return [UIColor colorWithWhite:1.0 alpha:0.85];
    return [UIColor whiteColor];
}

-(UIColor *)colorForTitleArrowAtIndex:(int)index {
    //return [UIColor colorWithWhite:0.0 alpha:0.25];
    return [UIColor whiteColor];
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
    test1View.frame = CGRectMake(0, 0, test1View.frame.size.width, test1View.frame.size.height + 50);
    [myCollapseClick setNeedsLayout];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
