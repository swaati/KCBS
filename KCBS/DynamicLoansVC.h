//
//  DynamicLoansVC.h
//  KCBS
//
//  Created by YK Software Solutions on 25/11/14.
//  Copyright (c) 2014 YK Software Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CollapseClick.h"
@interface DynamicLoansVC : UIViewController<CollapseClickDelegate,UITextFieldDelegate> {
UIView *test1View;
UIView *test2View;
UIView *test3View;
CollapseClick *myCollapseClick;
    
}
@property (nonatomic,strong) UIView *test1View;

@property (nonatomic,strong) UIView *test2View;
@property (nonatomic,strong) UIView *test3View;
@property(nonatomic,weak) CollapseClick *myCollapseClick;
@end
