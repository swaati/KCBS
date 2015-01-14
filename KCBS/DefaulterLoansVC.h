    //
    //  DefaulterLoansVC.h
    //  KCBS
    //
    //  Created by YK Software Solutions on 24/11/14.
    //  Copyright (c) 2014 YK Software Solutions. All rights reserved.
    //

    #import <UIKit/UIKit.h>

    @interface DefaulterLoansVC : UIViewController<UITableViewDataSource,UITableViewDelegate>
    {
        UITableView *defaulterloans_tv;
        NSString *dataForSection0;
        NSString *dataForSection2;
        NSMutableArray *demoData;
        int selectedValueIndex;
        bool isShowingList;
        
    }
    @property (nonatomic,strong)UITableView *defaulterloans_tv;
    @property (nonatomic,strong)UIView *loan_view;
    @property (nonatomic,strong)UILabel *loan_lbl;
    @property (retain, nonatomic) NSString *dataForSection0;
    @property (retain, nonatomic) NSString *dataForSection2;
    @property (retain, nonatomic) NSMutableArray *demoData;
    @property (nonatomic) int selectedValueIndex;
    @property (nonatomic) bool isShowingList;




    @end
