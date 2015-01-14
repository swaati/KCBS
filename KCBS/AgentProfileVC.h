    //
    //  AgentProfileVC.h
    //  KCBS
    //
    //  Created by YK Software Solutions on 22/11/14.
    //  Copyright (c) 2014 YK Software Solutions. All rights reserved.
    //

    #import <UIKit/UIKit.h>
    #import "AgentLogInViewController.h"
    #import "ControlGroup.h"
    #import "AgentObject.h"
    @interface AgentProfileVC : UIViewController<UITableViewDataSource,UITableViewDelegate>

       @property(nonatomic,strong) UITableView *agentdetails_tv;
    @property (strong, nonatomic) NSMutableArray * agentdetails_array;


    @property (nonatomic,strong)UIView *agent_view;
    @property (nonatomic,strong)UIImageView *imgview_agentpro;
    @property (nonatomic,strong)UILabel *name_lbl;
    @property (nonatomic,strong)UILabel *desig_lbl;
    @property(nonatomic,strong)UIButton *btnfirst;
    @property(nonatomic,strong)UIButton *btnsecond;
    @property(nonatomic,strong)UIButton *btnthird;
    @property(nonatomic,strong)UIButton *btnfourth;
    @property (nonatomic, strong) ControlGroup *controlGroup;
    @property(nonatomic,strong)NSMutableArray *rowlabel_array;
    @property(nonatomic,strong)NSString *lblcompleterecoveryvisit;
    @property(nonatomic,strong)NSString *lblpendingvisit;
    @property(nonatomic,strong)NSString *amountrecovered;
    @property(nonatomic,strong)NSString *recoverybonus;
    @property(nonatomic,strong)NSString *strname_lbl;
    @property(nonatomic,strong)NSString *strTotalnumberOfCompletedVisits;
    @property(nonatomic,strong)NSString *strTotalnumberOfPendingVisits;
    @property(nonatomic,strong)NSString *strTotalamountRecovered;
    @property(nonatomic,strong)NSString *strTotalrecoveryBonus;
    @property(nonatomic,strong)NSString *strTotalnumberOfCompletedVisits_string;
    @property(nonatomic,strong)NSString *strTotalnumberOfPendingVisits_string;
    @property(nonatomic,strong)NSString *strTotalamountRecovered_string;
    @property(nonatomic,strong)NSString *strTotalrecoveryBonus_string;

    @property(nonatomic,strong)NSString *lblname_agnt;


    //@property(nonatomic,strong)NSArray *userdetail

    //@property (nonatomic,strong)UIView *tabsparent_view;

    @end
