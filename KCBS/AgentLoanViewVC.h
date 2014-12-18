//
//  AgentLoanViewVC.h
//  KCBS
//
//  Created by YK Software Solutions on 16/12/14.
//  Copyright (c) 2014 YK Software Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CollapseClick.h"
@interface AgentLoanViewVC : UIViewController<CollapseClickDelegate,UITextFieldDelegate>
{

    __weak IBOutlet CollapseClick *myCollapseClick;
    IBOutlet UIView *firstview;
    IBOutlet UIView *secondview;
    //IBOutlet UIView *thirdview;
   
      }
@property (nonatomic,strong)UIView *alv_view;
@property (nonatomic,strong)UILabel *alv_lbl;
@property (nonatomic,strong)UIImageView *aimgview_agentloanview;
@end
