//
//  CustomerReminderVC.h
//  KCBS
//
//  Created by YK Software Solutions on 05/12/14.
//  Copyright (c) 2014 YK Software Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomerReminderVC : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong) UITableView *customerdreminders_tv;
@property (strong, nonatomic) NSArray * customerreminders_array;
@property (nonatomic,strong)UIView *reminder_view;
@property (nonatomic,strong)UILabel *name_lbl;
@property(nonatomic,strong) UIButton *addreminder_btn;
@property(nonatomic,strong)NSMutableArray *dataArray;


@end
