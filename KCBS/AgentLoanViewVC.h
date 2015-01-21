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
          
           
              }
        @property (strong,nonatomic) NSURLConnection* connection;
        @property (strong,nonatomic) NSMutableData * data;
        @property (nonatomic,strong)UIView *alv_view;
        @property (nonatomic,strong)UILabel *alv_lbl;
        @property (nonatomic,strong)UIImageView *aimgview_agentloanview;
        @property (nonatomic,strong)UIView *loandetail_view;
        @property (nonatomic,strong)UILabel *disdate_lbl;
        @property (nonatomic,strong)UILabel *valuation_lbl;
        @property (nonatomic,strong)UILabel *sancamnt_lbl;
        @property(nonatomic,strong)UILabel *sancable_lbl;
        @property (nonatomic,strong)UILabel *disbamnt_lbl;
        @property(nonatomic,strong)UILabel *outstandamnt_lbl;
        @property(nonatomic,strong)UILabel *intrstrisk_lbl;
        @property(nonatomic,strong)UILabel *loanqlty_lbl;
        @property(nonatomic,strong)UILabel *curntstats_lbl;
        @property (nonatomic,strong)UILabel *disdate_bluelbl;
        @property (nonatomic,strong)UILabel *valuation_bluelbl;
        @property (nonatomic,strong)UILabel *sancamnt_bluelbl;
        @property(nonatomic,strong)UILabel *sancable_bluelbl;
        @property (nonatomic,strong)UILabel *disbamnt_bluelbl;
        @property(nonatomic,strong)UILabel *outstandamnt_bluelbl;
        @property(nonatomic,strong)UILabel *intrstrisk_bluelbl;
        @property(nonatomic,strong)UILabel *loanqlty_bluelbl;
        @property(nonatomic,strong)UILabel *curntstats_bluelbl;
        @property(nonatomic,strong)UIView *paymentdetail_view;
        @property(nonatomic,strong)UILabel *pay_prncpl;
        @property(nonatomic,strong)UILabel *pay_prncplblue;
        @property(nonatomic,strong)UILabel *pay_intrst;
        @property(nonatomic,strong)UILabel *pay_intrstblue;
        @property(nonatomic,strong)UILabel *pay_penalintrst;
        @property(nonatomic,strong)UILabel *pay_penalintrstblue;
        @property(nonatomic,strong)UILabel *pay_othercharge;
        @property(nonatomic,strong)UILabel *pay_otherchargeblue;
        @property(nonatomic,strong)UILabel *pay_total;
        @property(nonatomic,strong)UILabel *pay_totalblue;
        @property(nonatomic,strong)UIView *lastrepayview;
        @property(nonatomic,strong)UILabel *recptdate;
        @property(nonatomic,strong)UILabel *recptdate_blue;
        @property(nonatomic,strong)UILabel *recptamount;
        @property(nonatomic,strong)UILabel *recptamount_blue;
        @property(nonatomic,strong)UILabel *particulars;
        @property(nonatomic,strong)UILabel *particulars_blue;
        @property(nonatomic,strong)UIView *overdueview;
        @property(nonatomic,strong)UILabel *overdueprinciple;
        @property(nonatomic,strong)UILabel *overdueprinciple_blue;
        @property(nonatomic,strong)UILabel *overdueintrst;
        @property(nonatomic,strong)UILabel *overdueintrst_blue;
    @property(nonatomic,strong)UILabel *overduepenalintrst;
    @property(nonatomic,strong)UILabel *overduepenalintrst_blue;
        @property(nonatomic,strong)UILabel *overdueothercharges;
        @property(nonatomic,strong)UILabel *overdueothercharges_blue;
        @property(nonatomic,strong)UILabel *overduetotal;
        @property(nonatomic,strong)UILabel *overduetotal_blue;
        @property(nonatomic,strong)UIView *loaneeview;
        @property(nonatomic,strong)UILabel *loanee_name;
        @property(nonatomic,strong)UILabel *loanee_name_blue;
        @property(nonatomic,strong)UILabel *loan_phno;
        @property(nonatomic,strong)UILabel *loan_phno_blue;
        @property(nonatomic,strong)UILabel *loan_address;
        @property(nonatomic,strong)UILabel *loan_address_blue;




        @end
