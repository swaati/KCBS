//
//  LoanViewVC.m
//  KCBS
//
//  Created by YK Software Solutions on 24/11/14.
//  Copyright (c) 2014 YK Software Solutions. All rights reserved.
//

#import "LoanViewVC.h"

@interface LoanViewVC ()

@end

@implementation LoanViewVC
@synthesize lv_view;
@synthesize lv_lbl;
@synthesize imgview_agentloanview;

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
    lv_view=[[UIView alloc]initWithFrame:CGRectMake(0,65, 320,65)];
    lv_view.backgroundColor=[UIColor colorWithRed:0.976 green:0.459 blue:0.016 alpha:1];
    [self.view addSubview:lv_view];
    lv_lbl= [[UILabel alloc]initWithFrame:CGRectMake(85,20,130,20)];
    lv_lbl.font=[UIFont fontWithName:@"Helvetica" size:16];
    lv_lbl.textColor = [UIColor whiteColor];
    lv_lbl.backgroundColor = [UIColor clearColor];
    lv_lbl.text = @"Loan View";
    [lv_view addSubview:lv_lbl];
    imgview_agentloanview = [[UIImageView alloc]
                             initWithFrame:CGRectMake(10,12,40,40)];
    [imgview_agentloanview setImage:[UIImage imageNamed:@"loanViewSIcon.png"]];
    [imgview_agentloanview setContentMode:UIViewContentModeScaleAspectFit];
    [lv_view addSubview:imgview_agentloanview];
    // Do any additional setup after loading the view.
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
