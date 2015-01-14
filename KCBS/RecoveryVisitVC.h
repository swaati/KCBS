    //
    //  RecoveryVisitVC.h
    //  KCBS
    //
    //  Created by YK Software Solutions on 05/12/14.
    //  Copyright (c) 2014 YK Software Solutions. All rights reserved.
    //


    #import <UIKit/UIKit.h>
    #import "CollapseClick.h"
    #import "RecoveryObject.h"

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
    @property (nonatomic,strong)UILabel *phone_label;
    @property (nonatomic,strong)UILabel *add_label;
    @property (nonatomic,strong)UILabel *amount_label;
    @property (nonatomic,strong)UILabel *interest_label;
    @property(nonatomic,strong)UIImageView *imgview_defaultpro;
    @property(nonatomic,strong)UILabel *loanaccno_lbl;
    @property(nonatomic,strong)UILabel *loanaccdata_lbl;
    @property(nonatomic,strong)UITextField *loanac_txtfld;
    @property(nonatomic,strong)UIButton *nosearchbtn;
    @property (nonatomic,strong)UIView *loanmember_view;
    @property (nonatomic,strong)UILabel *firstdatelbl;
    @property(nonatomic,strong)UITextField *firstdatetxt;
    @property (nonatomic,strong)UILabel *firstagentlbl;
    @property (nonatomic,strong)UITextField *firstagenttxt;
    @property(nonatomic,strong)UILabel *firstresultlbl;
    @property(nonatomic,strong)UITextField *firstresulttxt;
    @property(nonatomic,strong)UILabel *agentcomtlbl;
    @property(nonatomic,strong)UITextField *agentcomttxt;
    @property(nonatomic,strong)UILabel *loaneecomtlbl;
    @property(nonatomic,strong)UITextField *loaneecomtxt;
    @property(nonatomic,strong)UIButton *save_btn;
    @property(nonatomic,strong)UIButton *reset_btn;
    @property(nonatomic,strong)UIButton *back_btn;
    @property(nonatomic,strong)NSMutableArray *service_array;
    @property(nonatomic,strong)NSMutableArray *arrRecovery;
    @property (nonatomic,strong)UIView *detailloan_view;
    @property (nonatomic,strong)UILabel *accno_lbl;
    @property (nonatomic,strong)UILabel *accno_lbl1;
    @property (nonatomic,strong)UILabel *outstamount_lbl;
    @property (nonatomic,strong)UILabel *outstamount_lbl1;
    @property (nonatomic,strong)UILabel *intrstrisk_lbl;
    @property (nonatomic,strong)UILabel *intrstrisk_lbl1;
    @property(nonatomic,strong)UILabel *loanqlity_lbl;
    @property(nonatomic,strong)UILabel *loanqlity_lbl1;
    @property(nonatomic,strong)UILabel *curtstatus_lbl;
    @property(nonatomic,strong)UILabel *curtstatus_lbl1;
    @property (nonatomic,strong)UIView *detailoverview_view;
    @property (nonatomic,strong)UILabel *principle_lbl;
    @property (nonatomic,strong)UILabel *principle_lbl1;
    @property (nonatomic,strong)UILabel *intrst_lbl;
    @property (nonatomic,strong)UILabel *intrst_lbl1;
    @property (nonatomic,strong)UILabel *penalintrst_lbl;
    @property (nonatomic,strong)UILabel *penalintrst_lbl1;
    @property(nonatomic,strong)UILabel *othercharges_lbl;
    @property(nonatomic,strong)UILabel *othercharges_lbl1;
    @property(nonatomic,strong)UILabel *totlbl;
    @property(nonatomic,strong)UILabel *totlbl1;

    @property (nonatomic,strong)UIView *loanee_view;
    @property (nonatomic,strong)UILabel *loniname_lbl;
    @property (nonatomic,strong)UILabel *loniname_lbl1;
    @property (nonatomic,strong)UILabel *loniphno_lbl;
    @property (nonatomic,strong)UILabel *loniphno_lbl1;
    @property (nonatomic,strong)UILabel *loniadrs_lbl;
    @property (nonatomic,strong)UILabel *loniadrs_lbl1;


    //@property (nonatomic,strong)CollapseClick *myCollapseClick;
    @property (nonatomic,strong)UIView *others_view;
    @property (nonatomic,strong)UILabel *lonname_lbl;
    @property (nonatomic,strong)UILabel *lonname_lbl1;
    @property (nonatomic,strong)NSString *tigger;
    //@property (nonatomic,strong)NSString *straight;

    @end

        
    //    
    //    __weak IBOutlet CollapseClick *myCollapseClick;
    //}
    //@property (nonatomic,strong)UIView *recovery_view;
    //@property (nonatomic,strong)UILabel *recovery_lbl;
    //@property (nonatomic,strong)UIView *agent_view;
    ////@property (nonatomic,strong)UILabel *name_lbl;
    //@property (nonatomic,strong)UILabel *name_label;
    //@property (nonatomic,strong)UIImageView *imgview_agentrecovery;
    //@property (nonatomic,strong)UIView *loanmember_view;
    //@property (nonatomic,strong)UILabel *firstdatelbl;
    //@property (nonatomic,strong)UILabel *firstagentlbl;
    //@property(nonatomic,strong)UILabel *firstresultlbl;
    //@property(nonatomic,strong)UILabel *agentcomtlbl;
    //@property(nonatomic,strong)UILabel *loaneecomtlbl;
    //@property(nonatomic,strong)UIButton *save_btn;
    //@property(nonatomic,strong)UIButton *reset_btn;
    //@property(nonatomic,strong)UIButton *back_btn;
    //@end
