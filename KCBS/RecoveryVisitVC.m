//
//  RecoveryVisitVC.m
//  KCBS
//
//  Created by YK Software Solutions on 05/12/14.
//  Copyright (c) 2014 YK Software Solutions. All rights reserved.
//

#import "RecoveryVisitVC.h"

@interface RecoveryVisitVC ()

@end

@implementation RecoveryVisitVC
@synthesize recovery_view;
@synthesize recovery_lbl;
@synthesize agent_view;
@synthesize name_label;
- (void)viewDidLoad
{
    [super viewDidLoad];
  recovery_view=[[UIView alloc]initWithFrame:CGRectMake(0,65, 320,65)];
   recovery_view.backgroundColor=[UIColor colorWithRed:0.965 green:0.506 blue:0.129 alpha:1];
[self.view addSubview:recovery_view];
    recovery_lbl= [[UILabel alloc]initWithFrame:CGRectMake(100,20,130,20)];
    recovery_lbl.font=[UIFont fontWithName:@"Helvetica-Bold" size:16];
   recovery_lbl.textColor = [UIColor whiteColor];
   
    recovery_lbl.text = @"Defaulter Loans";
   [recovery_view addSubview:recovery_lbl];
    
    myCollapseClick.CollapseClickDelegate = self;
    [myCollapseClick reloadCollapseClick];
    
    // If you want a cell open on load, run this method:
    [myCollapseClick openCollapseClickCellAtIndex:1 animated:NO];
    

    /*
     // If you'd like multiple cells open on load, create an NSArray of NSNumbers
     // with each NSNumber corresponding to the index you'd like to open.
     // - This will open Cells at indexes 0,2 automatically
     
     NSArray *indexArray = @[[NSNumber numberWithInt:0],[NSNumber numberWithInt:2]];
     [myCollapseClick openCollapseClickCellsWithIndexes:indexArray animated:NO];
     */
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Collapse Click Delegate

// Required Methods
-(int)numberOfCellsForCollapseClick {
    return 30;
}

-(NSString *)titleForCollapseClickAtIndex:(int)index {
//    agent_view=[[UIView alloc]initWithFrame:CGRectMake(0,0, 320,250)];
//    agent_view.backgroundColor=[UIColor colorWithRed:0.965 green:0.506 blue:0.129 alpha:1];;
//    [self.view addSubview:agent_view];
//  
//    name_label=[[UILabel alloc]initWithFrame:CGRectMake(20,20,60,20)];
//    name_label.font=[UIFont fontWithName:@"Helvetica-Bold" size:16];
//    name_label.textColor = [UIColor whiteColor];
//    name_label.backgroundColor = [UIColor clearColor];
//    name_label.text = @"Name";
//    [agent_view addSubview:name_label];
//    
//    
//    UIButton *visit_btn = [UIButton buttonWithType: UIButtonTypeRoundedRect];
//    //agentloginbtn.layer.cornerRadius = 5;
//    //    [agentloginbtn addTarget:self
//    //                      action:@selector(agentloginbtn_Clicked)
//    //            forControlEvents:UIControlEventTouchUpInside];
//    [visit_btn setFrame:CGRectMake(20,200,100, 30)];
//    visit_btn.backgroundColor=[UIColor blackColor];
//    [visit_btn setTitle:@"VISIT" forState:UIControlStateNormal];
//    [agent_view addSubview:visit_btn];
//    UIButton *reminder_btn = [UIButton buttonWithType: UIButtonTypeRoundedRect];
//    [reminder_btn setFrame:CGRectMake(180,200,120, 30)];
//    reminder_btn.backgroundColor=[UIColor blackColor];
//    [reminder_btn setTitle:@"SET REMINDER" forState:UIControlStateNormal];
//    [agent_view addSubview:reminder_btn];
    
    
    
    switch (index) {
        case 0:
            return @"Other Loan Members";
            break;
        case 1:
            return @"Recovery Visit";
            break;
        case 2:
            return @"Loan Details";
            break;
            
        default:
            return @"";
            break;
    }
}

-(UIView *)viewForCollapseClickContentViewAtIndex:(int)index {
   switch (index) {
      case 0:
          // return agent_view;
            return test4View;
           break;
        case 1:
          

          return test2View;
            break;
       case 2:
          

           return test3View;
            break;
           
        default:
          

            return NULL;
            break;
   }
}


// Optional Methods

-(UIColor *)colorForCollapseClickTitleViewAtIndex:(int)index {
   return [UIColor colorWithRed:0.455 green:0.851 blue:0.996 alpha:1];
   

}


-(UIColor *)colorForTitleLabelAtIndex:(int)index {
    //return [UIColor colorWithWhite:1.0 alpha:0.85];
    return [UIColor whiteColor];
}

-(UIColor *)colorForTitleArrowAtIndex:(int)index {
    //return [UIColor colorWithWhite:0.0 alpha:0.25];
    return [UIColor whiteColor];
}

-(void)didClickCollapseClickCellAtIndex:(int)index isNowOpen:(BOOL)open {
    NSLog(@"%d and it's open:%@", index, (open ? @"YES" : @"NO"));
}


#pragma mark - TextField Delegate for Demo
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

// Example of change content view frame and then update collapseClick layout.
- (IBAction)buttonClicked:(id)sender {
    test1View.frame = CGRectMake(0, 0, test1View.frame.size.width, test1View.frame.size.height + 50);
    [myCollapseClick setNeedsLayout];
}


@end
