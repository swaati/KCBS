//
//  AgentLogInViewController.h
//  KCBS
//
//  Created by YK Software Solutions on 14/11/14.
//  Copyright (c) 2014 YK Software Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AgentProfileVC.h"
#import "DefaulterLoansVC.h"
#import "RecoveryVisitVC.h"

#import "AgentLoanViewVC.h"

#import "RemindersVC.h"
#import "DynamicLoansVC.h"
#import "ViewController.h"

@interface AgentLogInViewController : UIViewController<UITextFieldDelegate,UIScrollViewDelegate,UITabBarControllerDelegate,CollapseClickDelegate>
@property (strong, nonatomic) UITabBarController *tabBarcontroller;
@property(nonatomic,strong)UIScrollView *scrollView_agent;
@property(nonatomic,strong) UIImageView *imgview_agent;
@property(nonatomic,strong)UILabel *agentLabel;
@property(nonatomic,strong)UITextField *AgentUsernametextField;
@property(nonatomic,strong)UITextField *AgentPasswordtextField;
@property(nonatomic,strong) UIButton *agentloginbtn;
//@property(nonatomic,strong)UIImageView * img_backagent;
//@property(nonatomic,strong)UIImageView * img_poweragent;



@end
