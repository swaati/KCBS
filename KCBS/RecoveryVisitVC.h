//
//  RecoveryVisitVC.h
//  KCBS
//
//  Created by YK Software Solutions on 05/12/14.
//  Copyright (c) 2014 YK Software Solutions. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "CollapseClick.h"

@interface RecoveryVisitVC : UIViewController <CollapseClickDelegate,UITextFieldDelegate> {
    IBOutlet UIView *test1View;
   IBOutlet UIView *test2View;
    IBOutlet UIView *test3View;
    IBOutlet UIView *test4View;
    
    __weak IBOutlet CollapseClick *myCollapseClick;
}
@property (nonatomic,strong)UIView *recovery_view;
@property (nonatomic,strong)UILabel *recovery_lbl;
@property (nonatomic,strong)UIView *agent_view;
//@property (nonatomic,strong)UILabel *name_lbl;
@property (nonatomic,strong)UILabel *name_label;
@property (nonatomic,strong)UIImageView *imgview_agentrecovery;

@end
