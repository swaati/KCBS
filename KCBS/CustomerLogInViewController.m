//
//  CustomerLogInViewController.m
//  KCBS
//
//  Created by YK Software Solutions on 14/11/14.
//  Copyright (c) 2014 YK Software Solutions. All rights reserved.
//
//   NSDate *date = [NSDate date];
//    NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
//
//
//    [dateFormat setDateFormat:@"MMM dd, yyyy"];
//    NSString *dateString = [dateFormat stringFromDate:date];
//    NSArray *arr = [dateString componentsSeparatedByString:@" "];
//NSLog(@"Todays date is = %@",dateString);
//    NSLog(@"Todays date is = %@",arr);
//    NSString *first = [arr objectAtIndex:0];
//    NSLog(@"String at index 0 = %@", first);
//    NSString *second = [arr objectAtIndex:1];
//    NSLog(@"String at index 0 = %@", second);
//    NSString *third = [arr objectAtIndex:2];
//    NSLog(@"String at index 0 = %@", third);
//    NSMutableArray *tableContent = [[NSMutableArray alloc] initWithObjects:
//                                   second,first,third,nil];
//    NSString * result = [tableContent  componentsJoinedByString:@""];
//     NSLog(@"swati= %@", result);
//on click action of btn{
//    NSString *newString =@"NEW CELL";
//    
//    [tableArray addObject:newString];
//    [tableView reloadData];
//}


#import "CustomerLogInViewController.h"

@interface CustomerLogInViewController ()

@end

@implementation CustomerLogInViewController
@synthesize scrollView_customer;;
@synthesize imgview_customer;
@synthesize customerLabel;
@synthesize customerUsernametextField;
@synthesize customerPasswordtextField;
@synthesize customerloginbtn;
@synthesize tabBarcontroller;

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
    //self.title=@"Customer LogIn";
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"small.png"]];
    /////parent scrollview
    scrollView_customer = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320,480)];
    scrollView_customer.backgroundColor = [UIColor clearColor];
    scrollView_customer.scrollEnabled = YES;
    scrollView_customer.pagingEnabled = YES;
    scrollView_customer.showsVerticalScrollIndicator = YES;
    scrollView_customer.showsHorizontalScrollIndicator = YES;
    scrollView_customer.contentSize = CGSizeMake(300, 500+0);
    [self.view addSubview:scrollView_customer];
    //imageview
    imgview_customer = [[UIImageView alloc]
                     initWithFrame:CGRectMake(115,70, 100,100)];
    [imgview_customer setImage:[UIImage imageNamed:@"custLoginBIcon.png"]];
    [imgview_customer setContentMode:UIViewContentModeScaleAspectFit];
    [self.view addSubview:imgview_customer];
    ///label
    customerLabel = [[UILabel alloc]initWithFrame:
                  CGRectMake(58, 160, 280, 80)];
    customerLabel.numberOfLines = 0;
    customerLabel.font = [UIFont fontWithName:@"Helvetica" size:14];
    customerLabel.textColor = [UIColor colorWithRed:0.302 green:0.569 blue:0.749 alpha:1];
    customerLabel.backgroundColor = [UIColor clearColor];
    customerLabel.text = @"WELCOME TO CUSTOMER LOGIN";
    [self.view addSubview:customerLabel];
    ///agentusername
    customerUsernametextField = [[UITextField  alloc] initWithFrame:
                              CGRectMake(20, 220, 280, 30)];
    customerUsernametextField.borderStyle = UITextBorderStyleRoundedRect;
    customerUsernametextField.contentVerticalAlignment =UIControlContentVerticalAlignmentCenter;
    [customerUsernametextField setFont:[UIFont boldSystemFontOfSize:12]];
    customerUsernametextField.placeholder = @"User Name";
    [scrollView_customer addSubview:customerUsernametextField];
    customerUsernametextField.delegate = self;
    customerUsernametextField.autocorrectionType = UITextAutocorrectionTypeNo;
    customerUsernametextField.returnKeyType = UIReturnKeyNext;
    customerUsernametextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    ////agentpassword
    customerPasswordtextField = [[UITextField  alloc] initWithFrame:
                              CGRectMake(20, 280, 280, 30)];
    customerPasswordtextField.borderStyle = UITextBorderStyleRoundedRect;
    customerPasswordtextField.contentVerticalAlignment =UIControlContentVerticalAlignmentCenter;
    [customerPasswordtextField setFont:[UIFont boldSystemFontOfSize:12]];
    customerPasswordtextField.placeholder = @"Password";
    customerPasswordtextField.secureTextEntry=YES;
    
    customerPasswordtextField.autocorrectionType = UITextAutocorrectionTypeNo;
    
    customerPasswordtextField.returnKeyType = UIReturnKeyDone;
    customerPasswordtextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    [scrollView_customer addSubview:customerPasswordtextField];
    customerPasswordtextField.delegate = self;
    ////loginbutton
    customerloginbtn = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    customerloginbtn.layer.cornerRadius = 5;
    //agentloginbtn.layer.borderWidth = 1;
    [customerloginbtn setBackgroundColor: [UIColor colorWithRed:0.302 green:0.569 blue:0.749 alpha:1]];
    [customerloginbtn setTitleColor:[UIColor whiteColor] forState:
     UIControlStateNormal];
    //sets background image for normal state
    //    [agentloginbtn setBackgroundImage:[UIImage imageNamed:
    //                                      @"Button_Default.png"]
    //                            forState:UIControlStateNormal];
    //sets background image for highlighted state
    //[agentloginbtn setBackgroundImage:[UIImage imageNamed:
    ///@"Button_Highlighted.png"]
    //forState:UIControlStateHighlighted];
    [customerloginbtn addTarget:self
                      action:@selector(customerloginbtn_Clicked)
            forControlEvents:UIControlEventTouchUpInside];
    [customerloginbtn setFrame:CGRectMake(20, 330, 280, 30)];
    [customerloginbtn setTitle:@"LOGIN ME" forState:UIControlStateNormal];
    [scrollView_customer addSubview:customerloginbtn];
    
    

    // Do any additional setup after loading the view.
}
- (BOOL) validateEmail: (NSString *) strEmail
{
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:strEmail];
}
-(void)customerloginbtn_Clicked
{
    if([customerUsernametextField.text isEqualToString:@"" ]|| [customerPasswordtextField.text isEqualToString:@""])
    {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Alert" message:[NSString stringWithFormat:@"Please enter both Username and Password!"] delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [alertView show];
        [customerUsernametextField resignFirstResponder];
        [customerPasswordtextField resignFirstResponder];
        return;
    }
    if(![self validateEmail:customerUsernametextField.text])
    {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Alert" message:[NSString stringWithFormat:@"Please enter valid username!"] delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [alertView show];
        
        
    }
    else {
        
        NSMutableArray *customer_tabViewControllers = [[NSMutableArray alloc] init];
        //MVYContentViewController *menuvc=[[MVYContentViewController alloc]init];
        //[customer_tabViewControllers addObject:menuvc];

        CustomerProfileVC *customer_vc=[[CustomerProfileVC alloc]init];
        [customer_tabViewControllers addObject:customer_vc];
        
        customer_vc.tabBarItem =
        [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"View Profile", nil)
                                      image:[UIImage imageNamed:@"profileIcon_Small.png"]
                                        tag:1];
        CustomerAccountSumVC *cav=[[CustomerAccountSumVC alloc]init];
        [customer_tabViewControllers addObject:cav];
        
        cav.tabBarItem =
        [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"Accoount Summary", nil)
                                      image:[UIImage imageNamed:@"accSummaryIcon_Small.png"]
                                        tag:2];
        CustomerReminderVC *crv=[[CustomerReminderVC alloc]init];
        
         [customer_tabViewControllers addObject:crv];
        crv.tabBarItem =
        [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"Reminders", nil)
                                      image:[UIImage imageNamed:@"remindersIcon_Small.png"]
                                        tag:3];
        
        //           DefaulterLoansVC *defaulterloans_vc=[[DefaulterLoansVC alloc]init];
        //           [tabViewControllers addObject:defaulterloans_vc];
        //
        //            defaulterloans_vc.tabBarItem =
        //           [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"DefaulterLoans", nil)
        //                                         image:nil
        //                                           tag:2];
//        RecoveryVisitVC *recoveryvisit_vc=[[RecoveryVisitVC alloc]init];
//        [tabViewControllers addObject:recoveryvisit_vc];
//        recoveryvisit_vc.tabBarItem= [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"RecoveryVisit", nil)
//                                                                   image:nil
//                                                                     tag:3];
//        LoanViewVC *loanview_vc=[[LoanViewVC alloc]init];
//        [tabViewControllers addObject:loanview_vc];
//        loanview_vc.tabBarItem=[[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"LoanView", nil)
//                                                             image:nil
//                                                               tag:4];
//        RemindersVC *reminders_vc=[[RemindersVC alloc]init];
//        [tabViewControllers addObject:reminders_vc];
//        reminders_vc.tabBarItem=[[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"Reminders", nil)
//                                                              image:nil
//                                                                tag:5];
//        
        //    thirdNavVC.tabBarItem =
        //    [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"Third", nil)
        //                                  image:nil
        //                                    tag:3];
        
        //UITabBarController *tabbarController = [[UITabBarController alloc] init];
        
        
        //self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
        //self.window.rootViewController = tabbarController;
        
        
        
        
        //AgentProfileVC *AgentProfilevc= [[ AgentProfileVC alloc]init];
        //AgentLogInViewController *agentloginViewController = [[ AgentLogInViewController alloc]init];
        //[self.navigationController pushViewController:AgentProfilevc animated:YES];
        //AgentProfilevc = nil;
        tabBarcontroller = [[UITabBarController alloc] init];
        tabBarcontroller.viewControllers = customer_tabViewControllers;
        //[self.window addSubview:[self.navigationController view]];
        [self.navigationController pushViewController:tabBarcontroller animated:YES];
        
        
    }

}
    - (BOOL)textFieldShouldReturn:(UITextField *)textField
    {
        
        if (textField == self.customerPasswordtextField)
        {
            [textField resignFirstResponder];
            
        }
        else if (textField == self.customerUsernametextField)
        {
            [self.customerPasswordtextField becomeFirstResponder];
        }
        else
        {
            [textField resignFirstResponder];
        }
        
        
        
        
        
        return YES;
        // called when 'return' key pressed. return NO to ignore.
    }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


