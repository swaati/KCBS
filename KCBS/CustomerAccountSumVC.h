//
//  CustomerAccountSumVC.h
//  KCBS
//
//  Created by YK Software Solutions on 05/12/14.
//  Copyright (c) 2014 YK Software Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CollapseClick.h"


@interface CustomerAccountSumVC : UIViewController<CollapseClickDelegate,UITextFieldDelegate>
{
    
    
    
    __weak IBOutlet CollapseClick *myCollapseClick;
    
    
}
@property (nonatomic,strong)UIView *cusacc_view;
@property (strong,nonatomic) UILabel *welcome_label;
@property (strong,nonatomic) UILabel *name_label;
@property (nonatomic,strong) UIImageView *imgview_customacc;
@property (nonatomic,strong)UIView *savingsacc_view;
@property (nonatomic,strong)UIView *fixeddeposit_view;
@property(nonatomic,strong)UILabel *savingac_lbl;
@property(nonatomic,strong)UILabel *savingac_lblblue;
@property(nonatomic,strong)UILabel *savingopendate_lbl;
@property(nonatomic,strong)UILabel *savingopendate_lblblue;
@property(nonatomic,strong)UILabel *savingbalance_lbl;
@property(nonatomic,strong)UILabel *savingbalance_lblblue;
@property (nonatomic,strong)UILabel *savingstatus_lbl;
@property (nonatomic,strong)UILabel *savingstatus_lblblue;

@property(nonatomic,strong)UILabel *fixedaccno_lbl;
@property(nonatomic,strong)UILabel *fixedaccno_lblbllue;
@property(nonatomic,strong)UILabel *fixedopendate_lbl;
@property(nonatomic,strong)UILabel *fixedopendate_lblbllue;
@property(nonatomic,strong)UILabel *fixeddepttype_lbl;
@property(nonatomic,strong)UILabel *fixeddepttype_lblblue;
@property(nonatomic,strong)UILabel *fixedamount_lbl;
@property(nonatomic,strong)UILabel *fixedamount_lblblue;
@property(nonatomic,strong)UILabel *fixedstatus_lbl;
@property(nonatomic,strong)UILabel *fixedstatus_lblblue;

//@property (nonatomic,strong) UILabel *cusname_label;

@end
