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
    
    
    IBOutlet UIView *test1View;
    
    
    IBOutlet UIView *test2View;
    
    
    __weak IBOutlet CollapseClick *myCollapseClick;
    
    
}
@property (nonatomic,strong)UIView *cusacc_view;
@property (strong,nonatomic) UILabel *welcome_label;
@property (strong,nonatomic) UILabel *name_label;
@property (nonatomic,strong) UIImageView *imgview_customacc;
//@property (nonatomic,strong) UILabel *cusname_label;

@end
