//
//  CustomerLogInViewController.h
//  KCBS
//
//  Created by YK Software Solutions on 14/11/14.
//  Copyright (c) 2014 YK Software Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomerProfileVC.h"
#import "CustomerAccountSumVC.h"
#import "CustomerReminderVC.h"

@interface CustomerLogInViewController : UIViewController<UITextFieldDelegate,UIScrollViewDelegate>
@property(nonatomic,strong)UIScrollView *scrollView_customer;
@property(nonatomic,strong) UIImageView *imgview_customer;
@property(nonatomic,strong)UILabel *customerLabel;
@property(nonatomic,strong)UITextField *customerUsernametextField;
@property(nonatomic,strong)UITextField *customerPasswordtextField;
@property(nonatomic,strong) UIButton *customerloginbtn;
@property (strong, nonatomic) UITabBarController *tabBarcontroller;


@end
