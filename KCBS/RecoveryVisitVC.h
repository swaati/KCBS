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

        @interface RecoveryVisitVC : UIViewController <CollapseClickDelegate,UITextFieldDelegate,UITableViewDataSource,UITableViewDelegate,UIPickerViewDataSource,UIPickerViewDelegate> {
            IBOutlet UIView *test1View;
            IBOutlet UIView *test2View;
            IBOutlet UIView *test3View;
            
            IBOutlet UIView *test4View;
            __weak IBOutlet CollapseClick *myCollapseClick;
        }
@property(nonatomic,strong)NSArray *pickresult_array;
@property(nonatomic,strong)UIPickerView *result_picker;
@property(nonatomic,strong)UIDatePicker *pickdate;
//@property(nonatomic,strong)UIDatePicker *pick;
@property(nonatomic,strong) UIBarButtonItem *flexSpace;
@property(nonatomic,strong) UIBarButtonItem *doneButton;
@property(nonatomic,strong)UIToolbar *toolBar;
@property(nonatomic,strong) NSArray *toolbarItems ;
@property(nonatomic,strong)UIBarButtonItem *flexSpace_result;
@property(nonatomic,strong) UIBarButtonItem *doneButton_result;
@property(nonatomic,strong)UIToolbar *toolBar_result;
@property(nonatomic,strong) NSArray *toolbarItems_result;
    @property(nonatomic,strong) UITableView *recovery_tv;
    @property(nonatomic,strong)NSMutableArray *dataArray;

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
        @property (nonatomic,strong)UIView *others_view;
        @property (nonatomic,strong)UILabel *lonname_lbl;
        @property (nonatomic,strong)UILabel *lonname_lbl1;
    @property (nonatomic,strong)UIView *recoverytable_view;
    @property(nonatomic,strong)NSString *passedloanno;
    @property(nonatomic,strong)NSString *passedloanno_string;
    @property(nonatomic,strong)NSString *passedoutstandingamount;
    @property(nonatomic,strong)NSString *passedoutstandingamount_string;
    @property(nonatomic,strong)NSString *passedinterestrisk;
    @property(nonatomic,strong)NSString *passedinterestrisk_string;
    @property(nonatomic,strong)NSString *passedloanquality;
    @property(nonatomic,strong)NSString *passedloanquality_string;
    @property(nonatomic,strong)NSString *passedcurrentstatus;
    @property(nonatomic,strong)NSString *passedcurrentstatus_string;
    @property(nonatomic,strong)NSString *passedprinciple;
    @property(nonatomic,strong)NSString *passedprinciple_string;
    @property(nonatomic,strong)NSString *passedinterest;
    @property(nonatomic,strong)NSString *passedinterest_string;
    @property(nonatomic,strong)NSString *passedpenalinterest;
    @property(nonatomic,strong)NSString *passedpenalinterest_string;
    @property(nonatomic,strong)NSString *passedothercharges;
    @property(nonatomic,strong)NSString *passedothercharges_string;
    @property(nonatomic,strong)NSString *passedtotal;
    @property(nonatomic,strong)NSString *passedtotal_string;
    @property(nonatomic,strong)NSString *passedname;
    @property(nonatomic,strong)NSString *passedname_string;
    @property(nonatomic,strong)NSString *passedphoneno;
    @property(nonatomic,strong)NSString *passedphoneno_string;
    @property(nonatomic,strong)NSString *passedaddress;
    @property(nonatomic,strong)NSString *passedaddress_string;

@property(nonatomic,strong)NSString *date_string;
@property(nonatomic,strong)NSString *agent_string;
@property(nonatomic,strong)NSString *result_string;
@property(nonatomic,strong)NSString *agentcomments_string;
@property(nonatomic,strong)NSString *loaneecomments_string;
@property(nonatomic,strong)NSMutableDictionary *dictionnary;
@property(nonatomic,strong)UILabel *srlnolbl1;
@property(nonatomic,strong)UILabel *srlnolbl2;
@property(nonatomic,strong)UILabel *datelbl1;
@property(nonatomic,strong)UILabel *datelbl2;
@property(nonatomic,strong)UILabel *agentlbl1;
@property(nonatomic,strong)UILabel *agentlbl2;
@property(nonatomic,strong)UILabel *resultlbl1;
@property(nonatomic,strong)UILabel *resultlbl2;
@property(nonatomic,strong)UILabel *agentcommentlbl1;
@property(nonatomic,strong)UILabel *agentcommentlbl2;
@property(nonatomic,strong)UILabel *loaneecommentslbl1;
@property(nonatomic,strong)UILabel * loaneecommentslbl2;
@property (assign) BOOL clicked;

     
        @end

            
