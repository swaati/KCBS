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
@synthesize loandetail_view;
@synthesize disdate_lbl;
@synthesize valuation_lbl;
@synthesize sancamnt_lbl;
@synthesize sancable_lbl;
@synthesize disbamnt_lbl;
@synthesize outstandamnt_lbl;
@synthesize intrstrisk_lbl;
@synthesize loanqlty_lbl;
@synthesize curntstats_lbl;
@synthesize disdate_bluelbl;
@synthesize valuation_bluelbl;
@synthesize sancamnt_bluelbl;
@synthesize sancable_bluelbl;
@synthesize disbamnt_bluelbl;
@synthesize outstandamnt_bluelbl;
@synthesize intrstrisk_bluelbl;
@synthesize loanqlty_bluelbl;
@synthesize curntstats_bluelbl;


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
    //[self parseJsonResponse];
   [self performRequest];
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
    [myCollapseClick openCollapseClickCellAtIndex:1 animated:NO];
    

    // Do any additional setup after loading the view.
}
-(void)performRequest
{
        NSURL * url =[[NSURL alloc] initWithString:@"http://192.168.1.127:8080/kcbsAPI/getLoanAccountDetails?loanAcno=AP-001-HL-124564"];
    
    NSMutableURLRequest * request = [[NSMutableURLRequest alloc] initWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:60.0];
    self.connection=[[NSURLConnection alloc]initWithRequest:request
                                                   delegate:self];
    
}
-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    //handle errors
    NSLog(@"%@fygjkk",error.description);
}
-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    if(connection == _connection)
    {
        [_data appendData:data];
    }
    
    
}
-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    if(connection == _connection)
    {
        self.data = [NSMutableData data];
    }
}
-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    if (connection == _connection)
    {
        //NSString* str = [[NSString alloc]initWithData:_data encoding:NSUTF8StringEncoding];
        id object = [NSJSONSerialization JSONObjectWithData:_data options:NSJSONReadingAllowFragments error:nil];
        if ([object isKindOfClass:[NSArray class]])
        {
            NSArray* arr = (NSArray*)object;
            NSLog(@"data:%@",arr);
        }
        else if ([object isKindOfClass:[NSDictionary class]])
        {
            NSDictionary* dic = (NSDictionary*)object;
            NSLog(@"data:%@",dic);
            NSArray *results = [object objectForKey:@"loanDetails"];
            NSLog(@"icon: %@", results);

//           for (NSDictionary *result in results) {
//               NSString *icon = [result valueForKey:@"valuation"];
//               NSLog(@"icon: %@", icon);
//           }
        }
        
    }
}
-(int)numberOfCellsForCollapseClick {
     return 30;
}
-(NSString *)titleForCollapseClickAtIndex:(int)index {
    loandetail_view=[[UIView alloc]initWithFrame:CGRectMake(0,0, 320,220)];
    //[self.view addSubview:loandetail_view];
    disdate_lbl=[[UILabel alloc]initWithFrame:CGRectMake(20,10,140,20)];
    disdate_lbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    disdate_lbl.textColor = [UIColor blackColor];
   disdate_lbl.backgroundColor = [UIColor clearColor];
   disdate_lbl.text = @"First Disb Date";
      [loandetail_view addSubview:disdate_lbl];
    disdate_bluelbl=[[UILabel alloc]initWithFrame:CGRectMake(160,10,140,20)];
    disdate_bluelbl.backgroundColor=[UIColor blueColor];
    disdate_bluelbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    disdate_bluelbl.textColor = [UIColor blackColor];
    disdate_bluelbl.backgroundColor = [UIColor colorWithRed:0.208 green:0.682 blue:0.949 alpha:1];
    disdate_bluelbl.text = @"Rs 40847";
    [loandetail_view addSubview:disdate_bluelbl];
    
    
    valuation_lbl=[[UILabel alloc]initWithFrame:CGRectMake(20,35,140,20)];
    valuation_lbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    valuation_lbl.textColor = [UIColor blackColor];
    valuation_lbl.backgroundColor = [UIColor clearColor];
    valuation_lbl.text = @"Valuation";
    [loandetail_view addSubview:valuation_lbl];
    valuation_bluelbl=[[UILabel alloc]initWithFrame:CGRectMake(160,35,140,20)];
    valuation_bluelbl.backgroundColor=[UIColor blueColor];
    valuation_bluelbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    valuation_bluelbl.textColor = [UIColor blackColor];
    valuation_bluelbl.backgroundColor = [UIColor colorWithRed:0.208 green:0.682 blue:0.949 alpha:1];
    valuation_bluelbl.text = @"Rs 50,000";
    [loandetail_view addSubview:valuation_bluelbl];
    
    
    sancamnt_lbl=[[UILabel alloc]initWithFrame:CGRectMake(20,60,140,20)];
    sancamnt_lbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    sancamnt_lbl.textColor = [UIColor blackColor];
    sancamnt_lbl.backgroundColor = [UIColor clearColor];
    sancamnt_lbl.text = @"Sanctioned Amount";
    [loandetail_view addSubview:sancamnt_lbl];
    sancamnt_bluelbl=[[UILabel alloc]initWithFrame:CGRectMake(160,60,140,20)];
    sancamnt_bluelbl.backgroundColor=[UIColor blueColor];
    sancamnt_bluelbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    sancamnt_bluelbl.textColor = [UIColor blackColor];
    sancamnt_bluelbl.backgroundColor = [UIColor colorWithRed:0.208 green:0.682 blue:0.949 alpha:1];
    sancamnt_bluelbl.text = @"Rs 300,000";
    [loandetail_view addSubview:sancamnt_bluelbl];
    
    
    sancable_lbl=[[UILabel alloc]initWithFrame:CGRectMake(20,85,140,20)];
    sancable_lbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    sancable_lbl.textColor = [UIColor blackColor];
    sancable_lbl.backgroundColor = [UIColor clearColor];
    sancable_lbl.text = @"Sanctionable Amount";
    [loandetail_view addSubview:sancable_lbl];
    sancable_bluelbl=[[UILabel alloc]initWithFrame:CGRectMake(160,85,140,20)];
    sancable_bluelbl.backgroundColor=[UIColor blueColor];
    sancable_bluelbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    sancable_bluelbl.textColor = [UIColor blackColor];
    sancable_bluelbl.backgroundColor = [UIColor colorWithRed:0.208 green:0.682 blue:0.949 alpha:1];
    sancable_bluelbl.text = @"Rs 500,000";
    [loandetail_view addSubview:sancable_bluelbl];

    
    disbamnt_lbl=[[UILabel alloc]initWithFrame:CGRectMake(20,110,140,20)];
    disbamnt_lbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    disbamnt_lbl.textColor = [UIColor blackColor];
    disbamnt_lbl.backgroundColor = [UIColor clearColor];
    disbamnt_lbl.text = @"Total Disb Amount";
    [loandetail_view addSubview:disbamnt_lbl];
    disbamnt_bluelbl=[[UILabel alloc]initWithFrame:CGRectMake(160,110,140,20)];
    disbamnt_bluelbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    disbamnt_bluelbl.textColor = [UIColor blackColor];
    disbamnt_bluelbl.backgroundColor=[UIColor colorWithRed:0.208 green:0.682 blue:0.949 alpha:1];
    disbamnt_bluelbl.text = @"Rs 500,000";
    [loandetail_view addSubview:disbamnt_bluelbl];
    
    
    outstandamnt_lbl=[[UILabel alloc]initWithFrame:CGRectMake(20,135,140,20)];
    outstandamnt_lbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    outstandamnt_lbl.textColor = [UIColor blackColor];
    outstandamnt_lbl.backgroundColor = [UIColor clearColor];
    outstandamnt_lbl.text = @"Outstanding Amount";
    [loandetail_view addSubview:outstandamnt_lbl];
    outstandamnt_bluelbl=[[UILabel alloc]initWithFrame:CGRectMake(160,135,140,20)];
    outstandamnt_bluelbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    outstandamnt_bluelbl.textColor = [UIColor blackColor];
    outstandamnt_bluelbl.backgroundColor = [UIColor colorWithRed:0.208 green:0.682 blue:0.949 alpha:1];
    outstandamnt_bluelbl.text = @"Rs 324353";
    [loandetail_view addSubview:outstandamnt_bluelbl];
    
    
    intrstrisk_lbl=[[UILabel alloc]initWithFrame:CGRectMake(20,160,140,20)];
    intrstrisk_lbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    intrstrisk_lbl.textColor = [UIColor blackColor];
    intrstrisk_lbl.backgroundColor = [UIColor clearColor];
    intrstrisk_lbl.text = @"Interest risk";
    [loandetail_view addSubview:intrstrisk_lbl];
    intrstrisk_bluelbl=[[UILabel alloc]initWithFrame:CGRectMake(160,160,140,20)];
    intrstrisk_bluelbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    intrstrisk_bluelbl.textColor = [UIColor blackColor];
    intrstrisk_bluelbl.backgroundColor = [UIColor colorWithRed:0.208 green:0.682 blue:0.949 alpha:1];
    intrstrisk_bluelbl.text = @"A-Low";
    [loandetail_view addSubview:intrstrisk_bluelbl];
    
    
    loanqlty_lbl=[[UILabel alloc]initWithFrame:CGRectMake(20,185,140,20)];
    loanqlty_lbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    loanqlty_lbl.textColor = [UIColor blackColor];
    loanqlty_lbl.backgroundColor = [UIColor clearColor];
    loanqlty_lbl.text = @"Loan Quality";
    [loandetail_view addSubview:loanqlty_lbl];
    loanqlty_bluelbl=[[UILabel alloc]initWithFrame:CGRectMake(160,185,140,20)];
    loanqlty_bluelbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    loanqlty_bluelbl.textColor = [UIColor blackColor];
    loanqlty_bluelbl.backgroundColor = [UIColor colorWithRed:0.208 green:0.682 blue:0.949 alpha:1];
    loanqlty_bluelbl.text = @"Good";
    [loandetail_view addSubview:loanqlty_bluelbl];
    
    
    curntstats_lbl=[[UILabel alloc]initWithFrame:CGRectMake(20,210,140,20)];
    curntstats_lbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    curntstats_lbl.textColor = [UIColor blackColor];
    curntstats_lbl.backgroundColor = [UIColor clearColor];
    curntstats_lbl.text = @"Current Status";
    [loandetail_view addSubview:curntstats_lbl];
    curntstats_bluelbl=[[UILabel alloc]initWithFrame:CGRectMake(160,210,140,20)];
    curntstats_bluelbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    curntstats_bluelbl.textColor = [UIColor blackColor];
    curntstats_bluelbl.backgroundColor =[UIColor colorWithRed:0.208 green:0.682 blue:0.949 alpha:1];
    curntstats_bluelbl.text = @"Approved";
    [loandetail_view addSubview:curntstats_bluelbl];




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
    

//    @synthesize disdate_bluelbl;
//    @synthesize valuation_bluelbl;
//    @synthesize sancamnt_bluelbl;
//    @synthesize sancable_bluelbl;
//    @synthesize disbamnt_bluelbl;
//    @synthesize outstandamnt_bluelbl;
//    @synthesize intrstrisk_bluelbl;
//    @synthesize loanqlty_bluelbl;
//    @synthesize curntstats_bluelbl;
    
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
            return loandetail_view;
            break;
        case 1:
            return loandetail_view;
            break;
        case 2:
            return loandetail_view;
            break;
        case 3:
            return loandetail_view;
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
  loandetail_view.frame = CGRectMake(0, 0, loandetail_view.frame.size.width,loandetail_view.frame.size.height + 50);
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
