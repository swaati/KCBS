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
    #import "AgentObject.h"
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
    @synthesize main_array;
    @synthesize arr;
    @synthesize arrAgent;
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
        arrAgent=[[NSMutableArray alloc]init];
        self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"small.png"]];
        /////parent scrollview
        scrollView_agent = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320,480)];
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
        [self serviceCalls];
        NSLog(@"ddddd is %@",arrAgent.description);
        
            NSMutableArray *tabViewControllers = [[NSMutableArray alloc] init];
            AgentProfileVC *agent_vc=[[AgentProfileVC alloc]init];
            
            [tabViewControllers addObject:agent_vc];
        //agent_vc.strTotalnumberOfCompletedVisits=@"swati";
        if((AgentUsernametextField.text && ![AgentUsernametextField.text isKindOfClass:[NSNull class]])&&
           (AgentPasswordtextField.text && ![AgentPasswordtextField.text isKindOfClass:[NSNull class]]))
        {
            
            NSPredicate *predicate=[NSPredicate predicateWithFormat:@"stragentName=%@ || strpassword=%@",AgentUsernametextField.text,AgentPasswordtextField.text];
            NSArray * arrResults=[arrAgent filteredArrayUsingPredicate:predicate];
            AgentObject *dic=arrResults[0];
            NSLog(@"ddddd is 1%@",dic.description);
            NSLog(@"ddddd is 2%@",dic.strrecoveryBonus);
            NSLog(@"ddddd is 3%@",dic.strpassword);
           
           NSString *str=dic.strrecoveryBonus;
            //NSLog(@"7777775 is %@",str);
                    agent_vc.strTotalnumberOfCompletedVisits=dic.strnumberOfCompletedVisits;
            agent_vc.strTotalnumberOfPendingVisits=dic.strnumberOfPendingVisits;
            agent_vc.strTotalamountRecovered=dic.stramountRecovered;
            agent_vc.strTotalrecoveryBonus=str;
            
        }

            agent_vc.tabBarItem =
            [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"AgentAccount", nil)
                                          image:[UIImage imageNamed:@"profileIcon_Small.png"]
                                            tag:1];
            AgentDefaulterLoanVC *dy=[[AgentDefaulterLoanVC alloc]init];
            [tabViewControllers addObject:dy];
            
            dy.tabBarItem =
            [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"DefaulterLoans", nil)
                                          image:[UIImage imageNamed:@"defaulterLoanIcon_Small.png"]
                                            tag:2];
            
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
            tabBarcontroller = [[UITabBarController alloc] init];
            tabBarcontroller.viewControllers = tabViewControllers;
            
            //[self serviceCalls];
            [self.navigationController pushViewController:tabBarcontroller animated:YES];
        
        
        
        
        
    }




    //-(NSDictionary *)getValue:(NSString *)userName Password:(NSString *)password result:(NSArray *)arrResults
    //{
    //    NSPredicate *predicate=[NSPredicate predicateWithFormat:@"stragentName=%@ || strpassword=%@",userName,password];
    //   // NSPredicate *predicate=[NSPredicate predicateWithFormat:@"stragentName CONTAINS[cd]%@ || strpassword CONTAINS[cd]%@",userName,password];
    //    NSArray *arrData=[arrResults filteredArrayUsingPredicate:predicate];
    //    NSDictionary *Temp=[[NSDictionary alloc] init];;
    //    if (arrData.count)
    //    {
    //
    //        NSLog(@"Found result is%@",arrData.description);
    //         for(int i=0; i<[arrData count]; i++)
    //         {
    //             Temp=[arrData objectAtIndex:i];
    //             NSLog(@"Found result is%@",Temp.description);
    //              NSLog(@"Found result is%@",Temp.description);
    //            // NSDictionary *SWEET=[[NSDictionary alloc]init];
    //            // [SWEET ];
    //             //NSLog(@"SWEET result is%@",SWEET.description);
    //        }
    //       // NSLog(@"SWEET result is%@",SWEET.description);
    //
    //    }
    //    else
    //    {
    //
    //    }
    //    return Temp;
    //}
    //
    //

    -(void)serviceCalls
    {
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"json" ofType:@"json"];
        NSData *data = [NSData dataWithContentsOfFile:filePath];
        main_array = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
        NSLog(@"Array: %@", main_array);
        //NSLog(@"Array frist element: %@",[main_array objectAtIndex:0]);
        for (NSObject *single_object in main_array)
        {
            //NSLog(@"dic keys are %@",arr);
            // NSLog(@"loan name is %@",[arr objectForKey:@"numberOfPendingVisits"]);
            //             NSLog(@"loan name is %@",[single_object objectForKey:@"agentName"]);
            //            NSLog(@"loan name is %@",[single_object objectForKey:@"password"]);
        }
        for(NSDictionary *dictAgent in main_array)
            
        {
            
            
            AgentObject *objAgent = [[AgentObject alloc]init];
            objAgent.stragentName = [dictAgent valueForKey:@"agentName"];
            objAgent.strpassword=[dictAgent valueForKey:@"password"];
            
            objAgent.stramountRecovered= [dictAgent valueForKey:@"amountRecovered"];
            
            objAgent.strnumberOfCompletedVisits = [dictAgent valueForKey:@"numberOfCompletedVisits"];
            objAgent.strnumberOfPendingVisits = [dictAgent valueForKey:@"numberOfPendingVisits"];
            objAgent.strpassword = [dictAgent valueForKey:@"password"];
            objAgent.strrecoveryBonus = [dictAgent valueForKey:@"recoveryBonus"];
            
            [arrAgent addObject:objAgent];
            objAgent = nil;
        }
        
        // [self getValue:AgentUsernametextField.text Password:AgentPasswordtextField.text result:arrAgent];
        NSLog(@"appDelegate.arrFavoriteMade is1%@", arrAgent.description);
        
        for(int i=0;i<arrAgent.count;i++)
        {
            //NSLog(@"element is %@",arrAgent[i]);
        }
        
    }



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
