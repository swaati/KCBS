        //
        //  AgentDefaulterLoanVC.h
        //  KCBS
        //
        //  Created by YK Software Solutions on 06/01/15.
        //  Copyright (c) 2015 YK Software Solutions. All rights reserved.
        //



        #import <UIKit/UIKit.h>
        #import "CollapseClick.h"
        #import "LoanObject.h"
        #import "CollapseClickCell.h"
    #import "RecoveryVisitVC.h"
    #import "RemindersVC.h"
    #import "RecoveryObject.h"


        @interface AgentDefaulterLoanVC : UIViewController <CollapseClickDelegate,UITextFieldDelegate> {
            IBOutlet UIView *test1View;
            IBOutlet UIView *test2View;
            IBOutlet UIView *test3View;
            
            IBOutlet UIView *test4View;
            __weak IBOutlet CollapseClick *myCollapseClick;
        }
        @property (nonatomic,strong)UIView *defaulter_view;
        @property (nonatomic,strong)UILabel *defaulter_lbl;
        @property (nonatomic,strong)UIView *agent_view;
        @property (nonatomic,strong)UILabel *name_lbl;
        @property (nonatomic,strong)UILabel *name_label;
        @property (nonatomic,strong)UILabel *name_label1;
        @property (nonatomic,strong)UILabel *phone_label;
        @property (nonatomic,strong)UILabel *phone_label1;
        @property (nonatomic,strong)UILabel *add_label;
        @property (nonatomic,strong)UILabel *add_label1;
        @property (nonatomic,strong)UILabel *amount_label;
        @property (nonatomic,strong)UILabel *amount_label1;
        @property (nonatomic,strong)UILabel *interest_label;
        @property (nonatomic,strong)UILabel *interest_label1;

        @property(nonatomic,strong)UIImageView *imgview_defaultpro;
        @property(nonatomic,strong)NSArray *loans_array;
        @property(nonatomic,strong)NSArray *rowtitle_array;
        @property(nonatomic,strong)UILabel *first_loanno;
        @property(nonatomic,strong)UILabel *second_loanno;
        @property(nonatomic,strong)UILabel * third_loanno;
        @property(nonatomic,strong)UILabel * fourth_loanno;
        @property(nonatomic,strong)NSMutableArray *arrloan;
        @property(nonatomic,strong)NSDictionary *sw;
        @property(nonatomic,strong)NSString *TIGER;
    @property(nonatomic,strong)NSMutableArray *recovery_array;
    @property(nonatomic,strong)NSMutableArray *arrofRecovery;

            //@property (nonatomic,strong)CollapseClick *myCollapseClick;


        @end
