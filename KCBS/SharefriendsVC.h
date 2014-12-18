//
//  SharefriendsVC.h
//  KCBS
//
//  Created by YK Software Solutions on 12/12/14.
//  Copyright (c) 2014 YK Software Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Social/Social.h>
#import <MessageUI/MFMailComposeViewController.h>
#import <MobileCoreServices/MobileCoreServices.h>
#import <MessageUI/MessageUI.h>

@interface SharefriendsVC : UIViewController<UITableViewDataSource,UITableViewDelegate,MFMailComposeViewControllerDelegate,MFMessageComposeViewControllerDelegate>
{
    UITableView *socialTableView;
    
}
//@property (strong, nonatomic) SecondViewController *secondViewController;
@property (strong, nonatomic) NSArray * socialarray;
//@property (strong,nonatomic) UIButton *fb;
//@property (strong,nonatomic) UIButton *twtr;
//@property (nonatomic,strong) UIButton *mail;
//@property (nonatomic,strong)UIButton *watsup;
//@property (nonatomic,strong)UIButton *sms;

@end
