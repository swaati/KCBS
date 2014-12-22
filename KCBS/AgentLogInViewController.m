//
//  AgentLogInViewController.m
//  KCBS
//
//  Created by YK Software Solutions on 14/11/14.
//  Copyright (c) 2014 YK Software Solutions. All rights reserved.
//
//AgentLogInViewController *agentloginViewController = [[ AgentLogInViewController alloc]init];
//[self.navigationController pushViewController:agentloginViewController animated:YES];
//agentloginViewController = nil;
#import "AgentLogInViewController.h"


@interface AgentLogInViewController ()

@end

@implementation AgentLogInViewController
@synthesize tabBarcontroller;
@synthesize scrollView_agent;
@synthesize imgview_agent;
@synthesize agentLabel;
@synthesize AgentUsernametextField;
@synthesize AgentPasswordtextField;
@synthesize agentloginbtn;
//@synthesize img_backagent;
//@synthesize img_poweragent;
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
    NSDate *date = [NSDate date];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
    
    
    [dateFormat setDateFormat:@"MMM dd, yyyy"];
    NSString *dateString = [dateFormat stringFromDate:date];
    NSArray *arr = [dateString componentsSeparatedByString:@" "];
    NSLog(@"Todays date is = %@",dateString);
    NSLog(@"Todays date is = %@",arr);
    NSString *first = [arr objectAtIndex:0];
    NSLog(@"String at index 0 = %@", first);
    NSString *second = [arr objectAtIndex:1];
    NSLog(@"String at index 0 = %@", second);
    NSString *third = [arr objectAtIndex:2];
    NSLog(@"String at index 0 = %@", third);
    NSMutableArray *tableContent = [[NSMutableArray alloc] initWithObjects:
                                    second,first,third,nil];
    NSString * result = [tableContent  componentsJoinedByString:@""];
    NSLog(@"swati= %@", result);
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"small.png"]];

//    date_lbl=[[UILabel alloc]initWithFrame:CGRectMake(22,30,100,10)];
//    date_lbl.font=[UIFont fontWithName:@"Helvetica" size:10];
//    date_lbl.textColor = [UIColor blackColor];
//    //date_lbl.backgroundColor = [UIColor redColor];
//    date_lbl.text =result;
//    paintView=[[UIView alloc]initWithFrame:CGRectMake(30,10,100,40)];
//    //[paintView setBackgroundColor:[UIColor yellowColor]];
//    self.parentViewController.navigationItem.titleView=paintView;
//    logo=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"small.png"]];
//    logo.frame=CGRectMake(29,0,44,29);
//    [self.paintView addSubview:logo];
//    [self.paintView addSubview:date_lbl];
//    //self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"small.png"]];
//    self.navigationItem.titleView =paintView;
//    UIBarButtonItem *leftagent=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"backButton.png"]style:UIBarButtonItemStylePlain
//                                                         target:self
//                                                         action:nil];
//    //left.customView=[UIImageView imageNamed:@"backButton.png"];
//    img_backagent = [[UIImageView alloc]
//                initWithFrame:CGRectMake(12,8,20,20)];
//    [img_backagent setImage:[UIImage imageNamed:@"backButton.png"]];
//    leftagent.customView=img_backagent;
//    self.navigationItem.leftBarButtonItem = leftagent;
//    UIBarButtonItem *rightagent=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"logoutIcon.png"]style:UIBarButtonItemStylePlain
//                                                          target:self
//                                                          action:nil];
//    img_poweragent= [[UIImageView alloc]
//                initWithFrame:CGRectMake(12,8,20,20)];
//    [img_poweragent setImage:[UIImage imageNamed:@"logoutIcon.png"]];
//    rightagent.customView=img_poweragent;
//    self.navigationItem.rightBarButtonItem = rightagent;
//    

    //self.title=@"Agent LogIn";
    /////parent scrollview
    scrollView_agent = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320,480)];
    //scrollView_agent.backgroundColor=[UIColor orangeColor];
    scrollView_agent.backgroundColor = [UIColor clearColor];
    scrollView_agent.scrollEnabled = YES;
    scrollView_agent.pagingEnabled = YES;
    scrollView_agent.showsVerticalScrollIndicator = YES;
    scrollView_agent.showsHorizontalScrollIndicator = YES;
    scrollView_agent.contentSize = CGSizeMake(300, 500+0);
    [self.view addSubview:scrollView_agent];
    //imageview
    imgview_agent = [[UIImageView alloc]
                            initWithFrame:CGRectMake(115,70, 100,100)];
    [imgview_agent setImage:[UIImage imageNamed:@"agentLoginBIcon.png"]];
    [imgview_agent setContentMode:UIViewContentModeScaleAspectFit];
    [self.view addSubview:imgview_agent];
    ///label
   agentLabel = [[UILabel alloc]initWithFrame:
                 
CGRectMake(58, 160, 280, 80)];
    agentLabel.numberOfLines = 0;
   agentLabel.font = [UIFont fontWithName:@"Helvetica" size:14];
    agentLabel.textColor = [UIColor colorWithRed:0.302 green:0.569 blue:0.749 alpha:1];
    agentLabel.backgroundColor = [UIColor clearColor];
       agentLabel.text = @"WELCOME TO AGENT LOGIN";
   [self.view addSubview:agentLabel];
    ///agentusername
   AgentUsernametextField = [[UITextField  alloc] initWithFrame:
                              CGRectMake(20, 220, 280, 30)];
    AgentUsernametextField.borderStyle = UITextBorderStyleRoundedRect;
    AgentUsernametextField.contentVerticalAlignment =UIControlContentVerticalAlignmentCenter;
    [AgentUsernametextField setFont:[UIFont boldSystemFontOfSize:12]];
    AgentUsernametextField.placeholder = @"User Name";
    [scrollView_agent addSubview:AgentUsernametextField];
   AgentUsernametextField.delegate = self;
    AgentUsernametextField.autocorrectionType = UITextAutocorrectionTypeNo;
    AgentUsernametextField.returnKeyType = UIReturnKeyNext;
    AgentUsernametextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    ////agentpassword
   AgentPasswordtextField = [[UITextField  alloc] initWithFrame:
                                           CGRectMake(20, 280, 280, 30)];
    AgentPasswordtextField.borderStyle = UITextBorderStyleRoundedRect;
    AgentPasswordtextField.contentVerticalAlignment =UIControlContentVerticalAlignmentCenter;
    [AgentPasswordtextField setFont:[UIFont boldSystemFontOfSize:12]];
    AgentPasswordtextField.placeholder = @"Password";
    AgentPasswordtextField.secureTextEntry=YES;
    
    AgentPasswordtextField.autocorrectionType = UITextAutocorrectionTypeNo;
  
    AgentPasswordtextField.returnKeyType = UIReturnKeyDone;
    AgentPasswordtextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    [scrollView_agent addSubview:AgentPasswordtextField];
    AgentPasswordtextField.delegate = self;
    ////loginbutton
    agentloginbtn = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    agentloginbtn.layer.cornerRadius = 5;
    //agentloginbtn.layer.borderWidth = 1;
    [agentloginbtn setBackgroundColor: [UIColor colorWithRed:0.302 green:0.569 blue:0.749 alpha:1]];
    [agentloginbtn setTitleColor:[UIColor whiteColor] forState:
     UIControlStateNormal];
    //sets background image for normal state
//    [agentloginbtn setBackgroundImage:[UIImage imageNamed:
//                                      @"Button_Default.png"]
//                            forState:UIControlStateNormal];
    //sets background image for highlighted state
    //[agentloginbtn setBackgroundImage:[UIImage imageNamed:
                                      ///@"Button_Highlighted.png"]
                            //forState:UIControlStateHighlighted];
    [agentloginbtn addTarget:self
                 action:@selector(agentloginbtn_Clicked)
       forControlEvents:UIControlEventTouchUpInside];
    [agentloginbtn setFrame:CGRectMake(20, 330, 280, 30)];
    [agentloginbtn setTitle:@"LOGIN ME" forState:UIControlStateNormal];
    [scrollView_agent addSubview:agentloginbtn];
    

  
}
- (BOOL) validateEmail: (NSString *) strEmail
{
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:strEmail];
}

//login code
-(void)agentloginbtn_Clicked
{
   

//AgentUsernametextField,AgentPasswordtextField
//    appDelegate.usrname = txtFldUserID.text;
//    appDelegate.pass = txtFldPassWord.text;
//
//    //save into nsuserdefault
//    if(appDelegate.usrname!=nil)
//    {
//        [[NSUserDefaults standardUserDefaults] setObject:appDelegate.usrname forKey:@"txtFldUserID"];
//    }
//    if(appDelegate.pass!=nil)
//    {
//        [[NSUserDefaults standardUserDefaults] setObject:appDelegate.pass forKey:@"txtFldPassWord"];
//    }
//    [[NSUserDefaults standardUserDefaults] synchronize];
//
    if([AgentUsernametextField.text isEqualToString:@"" ]|| [AgentPasswordtextField.text isEqualToString:@""])
    {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Alert" message:[NSString stringWithFormat:@"Please enter both Username and Password!"] delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [alertView show];
      [AgentUsernametextField resignFirstResponder];
      [AgentPasswordtextField resignFirstResponder];
     return;
   }
//
//    if([txtFldUserID.text isEqualToString:@"" ])
//    {
//
//        [self alertStatus:@"Please enter Username" :@"Login Failed!"];
//        //greeting.text = @"Please enter username.";
//        [txtFldUserID resignFirstResponder];
//        [txtFldPassWord resignFirstResponder];
//        return;
//    }
//
//    if([txtFldPassWord.text isEqualToString:@""])
//    {
//        [self alertStatus:@"Please enter Password" :@"Login Failed!"];
//        //greeting.text = @"Please enter password.";
//        [txtFldUserID resignFirstResponder];
//        [txtFldPassWord resignFirstResponder];
//        return;
//    }
//    //    if([txtFldUserID.text isEqualToString:@"" ])
//    //
//    //    {
       if(![self validateEmail:AgentUsernametextField.text])
      {
          UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Alert" message:[NSString stringWithFormat:@"Please enter valid username!"] delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
          [alertView show];


        }
       else {
           
           NSMutableArray *tabViewControllers = [[NSMutableArray alloc] init];
           AgentProfileVC *agent_vc=[[AgentProfileVC alloc]init];
           [tabViewControllers addObject:agent_vc];
           agent_vc.tabBarItem =
           [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"AgentAccount", nil)
                                     image:[UIImage imageNamed:@"profileIcon_Small.png"]
                                           tag:1];
           ViewController *dy=[[ViewController alloc]init];
                   [tabViewControllers addObject:dy];
         
                     dy.tabBarItem =
                  [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"DefaulterLoans", nil)
                                                image:[UIImage imageNamed:@"defaulterLoanIcon_Small.png"]
                                                   tag:2];

//           DefaulterLoansVC *defaulterloans_vc=[[DefaulterLoansVC alloc]init];
//           [tabViewControllers addObject:defaulterloans_vc];
//           
//            defaulterloans_vc.tabBarItem =
//           [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"DefaulterLoans", nil)
//                                         image:nil
//                                           tag:2];
           RecoveryVisitVC *recoveryvisit_vc=[[RecoveryVisitVC alloc]init];
           [tabViewControllers addObject:recoveryvisit_vc];
           recoveryvisit_vc.tabBarItem= [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"RecoveryVisit", nil)
                image:[UIImage imageNamed:@"recoveryVisitIcon_Small.png"]
                                                                        tag:3];
          

           AgentLoanViewVC *loanview_vc=[[AgentLoanViewVC alloc]init];
           [tabViewControllers addObject:loanview_vc];
           loanview_vc.tabBarItem=[[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"LoanView", nil)
            image:[UIImage imageNamed:@"loanViewIcon_Small.png"]
                                                                  tag:4];
           RemindersVC *reminders_vc=[[RemindersVC alloc]init];
           [tabViewControllers addObject:reminders_vc];
           reminders_vc.tabBarItem=[[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"Reminders", nil)
                                                                 image:[UIImage imageNamed:@"remindersIcon_Small.png"]
                                                                  tag:5];

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
           tabBarcontroller.viewControllers = tabViewControllers;
           //[self.window addSubview:[self.navigationController view]];
           [self.navigationController pushViewController:tabBarcontroller animated:YES];
       
       
       }
    
//    //    }
//    //
//

//temporary alert



//NSString *username = appDelegate.usrname;
//NSString *password = appDelegate.pass;
//NSMutableDictionary *dictionnary = [NSMutableDictionary dictionary];
//[dictionnary setObject:username forKey:@"username"];
//[dictionnary setObject:password forKey:@"password"];

//NSError *error = nil;
//NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dictionnary
//options:kNilOptions
// error:&error];


//NSURL *url = [NSURL URLWithString:@"http://cpu0051/jsonResultDev/Home/Login"];
//    NSMutableURLRequest *theRequest = [NSMutableURLRequest requestWithURL:url];
//    [theRequest setHTTPMethod:@"POST"];
//    [theRequest setValue:@"application/json" forHTTPHeaderField:@"Accept"];
//    [theRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
//    [theRequest setValue:@"json" forHTTPHeaderField:@"Data-Type"];
//
//    [theRequest setValue:[NSString stringWithFormat:@"%d", [jsonData length]]  forHTTPHeaderField:@"Content-Length"];
//
//    [theRequest setHTTPBody:jsonData];
//
//    NSHTTPURLResponse *response = nil;
//    NSData *urlData=[NSURLConnection sendSynchronousRequest:theRequest returningResponse:&response error:&error];
//
//    NSLog(@"Response code: %d", [response statusCode]);
//
//
//
//
//
//
//    if ([response statusCode] >=200 && [response statusCode] <300)
//    {
//        NSString *responseData = [[NSString alloc]initWithData:urlData encoding:NSUTF8StringEncoding];
//
//        NSDictionary *jsonData = [NSJSONSerialization JSONObjectWithData:[responseData dataUsingEncoding:NSUTF8StringEncoding] options:0 error: nil];
//        NSInteger success = [(NSNumber *) [jsonData objectForKey:@"success"] integerValue];
//        NSLog(@"llllll>>>>>%@", jsonData);
//
//
//
//
//
//        if(success == 1)
//        {
//            appDelegate.isLoginTrue=YES;
//            //[self alertStatus:@"Logged in Successfully." :@"Login Success!"];
//            SearchJobs*view=[[SearchJobs alloc]init];
//            CATransition* transition = [CATransition animation];
//            transition.duration = 0.3;
//            transition.type = kCATransitionFromRight;
//            transition.subtype = kCATransitionFromTop;
//
//            [self.navigationController.view.layer addAnimation:transition forKey:kCATransition];
//            [self.navigationController pushViewController:view animated:NO];
//
//        }
//        else
//        {
//            appDelegate.isLoginTrue=NO;
//            NSString *error_msg = (NSString *) [jsonData objectForKey:@"error_message"];
//
//            //[self alertStatus:error_msg :@"Login Failed!"];
//        }
//
//    }
//    else
//    {
//        if (error) NSLog(@"Error: %@", error);
//        [self alertStatus:@"Connection Failed" :@"Login Failed!"];
//    }
//
//
//
//
//    [txtFldUserID resignFirstResponder];
//    [txtFldPassWord resignFirstResponder];
}
////login code
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    if (textField == self.AgentPasswordtextField)
    {
        [textField resignFirstResponder];
        
    }
    else if (textField == self.AgentUsernametextField)
    {
        [self.AgentPasswordtextField becomeFirstResponder];
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
