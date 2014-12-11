//
//  AgentProfileVC.h
//  KCBS
//
//  Created by YK Software Solutions on 22/11/14.
//  Copyright (c) 2014 YK Software Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ControlGroup.h"
@interface AgentProfileVC : UIViewController<UITableViewDataSource,UITableViewDelegate>

   @property(nonatomic,strong) UITableView *agentdetails_tv;
@property (strong, nonatomic) NSArray * agentdetails_array;


@property (nonatomic,strong)UIView *agent_view;
@property (nonatomic,strong)UIImageView *imgview_agentpro;
@property (nonatomic,strong)UILabel *name_lbl;
@property (nonatomic,strong)UILabel *desig_lbl;
@property(nonatomic,strong)UIButton *btnfirst;
@property(nonatomic,strong)UIButton *btnsecond;
@property(nonatomic,strong)UIButton *btnthird;
@property(nonatomic,strong)UIButton *btnfourth;
@property (nonatomic, strong) ControlGroup *controlGroup;
//@property (nonatomic,strong)UIView *tabsparent_view;

@end
