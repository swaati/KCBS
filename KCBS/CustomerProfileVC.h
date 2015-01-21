      //
      //  CustomerProfileVC.h
      //  KCBS
      //
      //  Created by YK Software Solutions on 05/12/14.
      //  Copyright (c) 2014 YK Software Solutions. All rights reserved.
      //

      #import <UIKit/UIKit.h>

      @interface CustomerProfileVC : UIViewController<UITableViewDataSource,UITableViewDelegate>
      @property(nonatomic,strong) UITableView *customerdetails_tv;
      @property (strong, nonatomic) NSArray *customerdetails_array;
      @property (nonatomic,strong)UIView *customer_view;
      @property (nonatomic,strong)UILabel *name_lbl;
      @property (nonatomic,strong)UIImageView  *imgview_custompro;
      //@property (nonatomic,strong)UIImageView *img_drawer;




      @end
