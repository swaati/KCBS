//
//  FeedbackViewController.h
//  KCBS
//
//  Created by YK Software Solutions on 14/11/14.
//  Copyright (c) 2014 YK Software Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

#import "ControlGroup.h"
@interface FeedbackViewController : UIViewController<UITextFieldDelegate,UITextViewDelegate,UIScrollViewDelegate,UIPickerViewDataSource,UIPickerViewDelegate>
@property (nonatomic,strong)NSMutableArray *buttonHolderArray;
@property(nonatomic,strong)UIScrollView *scrollView_feedback;
@property(nonatomic,strong) UIImageView *imgview_feedback;
@property(nonatomic,strong)UILabel *feedbackLabel;
@property(nonatomic,strong)UILabel *ratingLabel;

@property(nonatomic,strong)UITextField *feedbacktype_txt;
@property(nonatomic,strong)UIPickerView *yourpicker;
@property(nonatomic,strong)UITextView *txt_comments;
@property(nonatomic,strong)UITextField *feedbackemail_textField;
@property(nonatomic,strong) UIButton *submitbtn;

//@property(nonatomic,strong)UIButton *btn1;
//@property(nonatomic,strong)UIButton *btn2;
//@property(nonatomic,strong)UIButton *btn3;
//@property(nonatomic,strong)UIButton *btn4;
//@property(nonatomic,strong)UIButton *btn5;
@property (nonatomic, strong) ControlGroup *controlGroup;
@end

