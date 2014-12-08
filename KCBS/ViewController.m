//
//  ViewController.m
//  CollapseClick
//
//  Created by Ben Gordon on 2/28/13.
//  Copyright (c) 2013 Ben Gordon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize defaulter_view;
@synthesize defaulter_lbl;
@synthesize agent_view;
@synthesize name_label;
//@synthesize myCollapseClick;
//@synthesize name_lbl;
- (void)viewDidLoad
{
    [super viewDidLoad];
    defaulter_view=[[UIView alloc]initWithFrame:CGRectMake(0,65, 320,65)];
    defaulter_view.backgroundColor=[UIColor colorWithRed:0.965 green:0.506 blue:0.129 alpha:1];
    [self.view addSubview:defaulter_view];
    defaulter_lbl= [[UILabel alloc]initWithFrame:CGRectMake(100,20,130,20)];
    defaulter_lbl.font=[UIFont fontWithName:@"Helvetica-Bold" size:16];
    defaulter_lbl.textColor = [UIColor whiteColor];
    defaulter_lbl.backgroundColor = [UIColor greenColor];
    defaulter_lbl.text = @"Defaulter Loans";
    [defaulter_view addSubview:defaulter_lbl];

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
    
    agent_view=[[UIView alloc]initWithFrame:CGRectMake(0,0, 320,250)];
    agent_view.backgroundColor=[UIColor colorWithRed:0.965 green:0.506 blue:0.129 alpha:1];;
    [self.view addSubview:agent_view];
    //    name_lbl= [[UILabel alloc]initWithFrame:CGRectMake(100,20,150,20)];
    //    name_lbl.font=[UIFont fontWithName:@"Helvetica-Bold" size:16];
    //    name_lbl.textColor = [UIColor whiteColor];
    //    name_lbl.backgroundColor = [UIColor clearColor];
    //    name_lbl.text = @"Defaulter Loans";
    //    [agent_view addSubview:name_lbl];
    //    [agentloginbtn setBackgroundColor: [UIColor colorWithRed:0.302 green:0.569 blue:0.749 alpha:1]];
    //    [agentloginbtn setTitleColor:[UIColor whiteColor] forState:
    //     UIControlStateNormal];
    //sets background image for normal state
    //    [agentloginbtn setBackgroundImage:[UIImage imageNamed:
    //                                      @"Button_Default.png"]
    //                            forState:UIControlStateNormal];
    //sets background image for highlighted state
    //[agentloginbtn setBackgroundImage:[UIImage imageNamed:
    ///@"Button_Highlighted.png"]
    //forState:UIControlStateHighlighted];
    name_label=[[UILabel alloc]initWithFrame:CGRectMake(20,20,60,20)];
    name_label.font=[UIFont fontWithName:@"Helvetica-Bold" size:16];
    name_label.textColor = [UIColor whiteColor];
    name_label.backgroundColor = [UIColor clearColor];
    name_label.text = @"Name";
    [agent_view addSubview:name_label];
    
    
    UIButton *visit_btn = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    //agentloginbtn.layer.cornerRadius = 5;
    //    [agentloginbtn addTarget:self
    //                      action:@selector(agentloginbtn_Clicked)
    //            forControlEvents:UIControlEventTouchUpInside];
    [visit_btn setFrame:CGRectMake(20,200,100, 30)];
    visit_btn.backgroundColor=[UIColor blackColor];
    [visit_btn setTitle:@"VISIT" forState:UIControlStateNormal];
    [agent_view addSubview:visit_btn];
    UIButton *reminder_btn = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    [reminder_btn setFrame:CGRectMake(180,200,120, 30)];
    reminder_btn.backgroundColor=[UIColor blackColor];
    [reminder_btn setTitle:@"SET REMINDER" forState:UIControlStateNormal];
    [agent_view addSubview:reminder_btn];
    
    
    
    switch (index) {
        case 0:
            return @"Login To CollapseClick";
            break;
        case 1:
            return @"Create an Account";
            break;
        case 2:
            return @"Terms of Service";
            break;
        case 3:
            return @"practice";
            break;
            
        default:
            return @"";
            break;
    }
}

-(UIView *)viewForCollapseClickContentViewAtIndex:(int)index {
    switch (index) {
        case 0:
            //return test1View;
            return agent_view;
            break;
        case 1:
            //return test2View;
            return agent_view;
            
            break;
        case 2:
            //return test3View;
            return agent_view;
            
            break;
        case 3:
            //return test4View;
            return agent_view;
            
        default:
            //return test1View;
            return agent_view;
            
            break;
    }
}


// Optional Methods

-(UIColor *)colorForCollapseClickTitleViewAtIndex:(int)index {
    return [UIColor colorWithRed:0.757 green:0.882 blue:0.973 alpha:1];
}


-(UIColor *)colorForTitleLabelAtIndex:(int)index {
    return [UIColor colorWithWhite:1.0 alpha:0.85];
}

-(UIColor *)colorForTitleArrowAtIndex:(int)index {
    return [UIColor colorWithWhite:0.0 alpha:0.25];
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
    agent_view.frame = CGRectMake(0, 0, agent_view.frame.size.width,agent_view.frame.size.height + 50);
    [myCollapseClick setNeedsLayout];
}


@end
