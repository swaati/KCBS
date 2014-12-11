//
//  CustomerAddremindersVC.h
//  KCBS
//
//  Created by YK Software Solutions on 08/12/14.
//  Copyright (c) 2014 YK Software Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomerAddremindersVC : UIViewController<UITextFieldDelegate,UIScrollViewDelegate,UITextViewDelegate>
@property (nonatomic,strong)UIView *addreminder_view;
@property (nonatomic,strong)UILabel *reminder_lbl;
@property(nonatomic,strong)UIScrollView *scrollView_addreminder;
@property(nonatomic,strong)UITextField *reminder_sbj_txt;
@property(nonatomic,strong)UITextField *reminder_hr_txt;
@property(nonatomic,strong)UITextField *reminder_days_txt;
@property(nonatomic,strong)UITextField *reminder_months_txt;
@property (nonatomic,strong)UITextView *msgtxt_view;
@property(nonatomic,strong) UIButton *set_reminderbtn;

@end
