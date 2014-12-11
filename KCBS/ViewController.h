//
//  ViewController.h
//  CollapseClick
//
//  Created by Ben Gordon on 2/28/13.
//  Copyright (c) 2013 Ben Gordon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CollapseClick.h"

@interface ViewController : UIViewController <CollapseClickDelegate,UITextFieldDelegate> {
    IBOutlet UIView *test1View;
    IBOutlet UIView *test2View;
    IBOutlet UIView *test3View;
    
    IBOutlet UIView *test4View;
    __weak IBOutlet CollapseClick *myCollapseClick;
}
@property (nonatomic,strong)UIView *defaulter_view;
@property (nonatomic,strong)UILabel *defaulter_lbl;
@property (nonatomic,strong)UIView *agent_view;
//@property (nonatomic,strong)UILabel *name_lbl;
@property (nonatomic,strong)UILabel *name_label;
@property (nonatomic,strong)UILabel *phone_label;
@property (nonatomic,strong)UILabel *add_label;
@property (nonatomic,strong)UILabel *amount_label;
@property (nonatomic,strong)UILabel *interest_label;
@property(nonatomic,strong)UIImageView *imgview_defaultpro;

//@property (nonatomic,strong)CollapseClick *myCollapseClick;


@end
