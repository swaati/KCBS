//
//  MenuViewController.h
//  KCBS
//
//  Created by YK Software Solutions on 14/11/14.
//  Copyright (c) 2014 YK Software Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AgentLogInViewController.h"
#import "CustomerLogInViewController.h"
#import "BranchLocatorViewController.h"
#import "ContactUsViewController.h"
#import "FeedbackViewController.h"
#import "SharefriendsVC.h"
#import "TermsVC.h"
#import "ProductInfoVC.h"

@interface MenuViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    UITableView *menuTableView;
   
}
//@property (strong, nonatomic) SecondViewController *secondViewController;
@property (strong, nonatomic) NSArray * menuarray;
@property (strong, nonatomic) UIView *logoView;
@property(nonatomic,strong)UIImageView * img_back;
@property(nonatomic,strong)UIImageView * img_power;
@property (nonatomic,strong)UILabel *date_lbl;
@property(nonatomic,strong)UIView *paintView;
@property (nonatomic,strong)UIImageView *logo;


@end