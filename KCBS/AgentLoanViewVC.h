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


@end
