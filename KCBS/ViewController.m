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
@synthesize name_label1;
@synthesize phone_label;
@synthesize phone_label1;
@synthesize add_label;
@synthesize add_label1;
@synthesize amount_label;
@synthesize amount_label1;
@synthesize interest_label;
@synthesize interest_label1;
@synthesize imgview_defaultpro;
@synthesize loans_array;
@synthesize rowtitle_array;
@synthesize first_loanno;
@synthesize second_loanno;
@synthesize third_loanno;
@synthesize fourth_loanno;
@synthesize arrloan;
@synthesize sw;
@synthesize TIGER;

//@synthesize myCollapseClick;
//@synthesize name_lbl;
- (void)viewDidLoad
{
    [super viewDidLoad];
    //UILabel *lbl1=(UILabel *)[cell viewWithTag:101];
    defaulter_view=[[UIView alloc]initWithFrame:CGRectMake(0,65, 320,65)];
    defaulter_view.backgroundColor=[UIColor colorWithRed:0.965 green:0.506 blue:0.129 alpha:1];
    [self.view addSubview:defaulter_view];
    defaulter_lbl= [[UILabel alloc]initWithFrame:CGRectMake(85,20,130,20)];
    defaulter_lbl.font=[UIFont fontWithName:@"Helvetica" size:16];
    defaulter_lbl.textColor = [UIColor whiteColor];
    ///defaulter_lbl.backgroundColor = [UIColor greenColor];
    defaulter_lbl.text = @"Defaulter Loans";
    [defaulter_view addSubview:defaulter_lbl];
    imgview_defaultpro = [[UIImageView alloc]
                        initWithFrame:CGRectMake(10,12,40,40)];
    [imgview_defaultpro setImage:[UIImage imageNamed:@"defaulterLoanSIcon.png"]];
    [imgview_defaultpro setContentMode:UIViewContentModeScaleAspectFit];
    [defaulter_view addSubview:imgview_defaultpro];
  //first_loanno=(UILabel *)[self viewWithTag:101];
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
    //[self serviceCalls];
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
    [self callservice];
    NSLog(@"oooooo is %d",loans_array.count);
    //int i=0;
//    int i=1;
//    while (loans_array.count <=4) {
//        return [loans_array[i] valueForKey:@"Loan Acc No"];
//        i++;
//    }
//    for(int i=0;i<loans_array.count;i++)
//    {
//        NSLog(@"element is %@",loans_array[i]);
//        // NSLog(@"element is %@",[loans_array[i] valueForKey:@"Loan Acc No"]);
//        //NSString *lll=[loans_array[i] valueForKey:@"Loan Acc No"];
//        
//            return [loans_array[i] valueForKey:@"Loan Acc No"];
//        
//        
//    }
     NSLog(@"Array length: %d", loans_array.count);
    NSLog(@"qqqqqqqqqqqqqqqqqqqqqqqqqqq %@",[[arrloan objectAtIndex:0] valueForKey:@"straddress"]);
    

       ////index
    switch (index) {
        case 0:
            return [loans_array[index] valueForKey:@"Loan Acc No"];
           break;
       case 1:
            return [loans_array[index] valueForKey:@"Loan Acc No"];
           break;
        case 2:
           return [loans_array[index] valueForKey:@"Loan Acc No"];
           break;
      case 3:
           return [loans_array[index] valueForKey:@"Loan Acc No"];
           break;
           
       default:
            return @"";
            break;
    }
    
}
//titleForCollapseClickAtIndex(int);

-(UIView *)viewForCollapseClickContentViewAtIndex:(int)index {
     [self callservice];
   
    NSLog(@"ddddd is %@",loans_array.description);
    
   //self.TIGER=CollapseClick.titleForCollapseClickAtIndex();
   // NSString *title= CollapseClick.titleForCollapseClickAtIndex();
       // NSPredicate *predicate=[NSPredicate predicateWithFormat:@"strloanno=%@",AgentUsernametextField.text];
       // NSArray * arrResults=[arrloan filteredArrayUsingPredicate:predicate];
        //LoanObject *dic=arrResults[0];
        //NSLog(@"ddddd is 1%@",dic.description);
       // NSLog(@"ddddd is 2%@",dic.strrecoveryBonus);
        //NSLog(@"ddddd is 3%@",dic.strpassword);
        
       // NSString *str=dic.strrecoveryBonus;
        //NSLog(@"7777775 is %@",str);
        //agent_vc.strTotalnumberOfCompletedVisits=dic.strnumberOfCompletedVisits;
        //agent_vc.strTotalnumberOfPendingVisits=dic.strnumberOfPendingVisits;
       // agent_vc.strTotalamountRecovered=dic.stramountRecovered;
        //agent_vc.strTotalrecoveryBonus=str;
    agent_view=[[UIView alloc]initWithFrame:CGRectMake(0,0, 320,150)];
    agent_view.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:agent_view];
    
    name_label=[[UILabel alloc]initWithFrame:CGRectMake(10,0,100,20)];
    name_label.font=[UIFont fontWithName:@"Helvetica" size:13];
    name_label.textColor = [UIColor blackColor];
    //name_label.backgroundColor = [UIColor yellowColor];
    name_label.text = @"Name:";
    [agent_view addSubview:name_label];
    name_label1=[[UILabel alloc]initWithFrame:CGRectMake(150,0,200,20)];
    name_label1.font=[UIFont fontWithName:@"Helvetica" size:13];
    name_label1.textColor = [UIColor blackColor];
    //name_label.backgroundColor = [UIColor yellowColor];
    name_label1.text = @"SWATI ROUT";
    [agent_view addSubview:name_label1];
    ///phone_label
    phone_label=[[UILabel alloc]initWithFrame:CGRectMake(10,20,100,20)];
    phone_label.font=[UIFont fontWithName:@"Helvetica" size:13];
    phone_label.textColor = [UIColor blackColor];
    //phone_label.backgroundColor = [UIColor yellowColor];
    phone_label.text = @"PhoneNo:";
    [agent_view addSubview:phone_label];
    
    phone_label1=[[UILabel alloc]initWithFrame:CGRectMake(150,20,200,20)];
    phone_label1.font=[UIFont fontWithName:@"Helvetica" size:13];
    phone_label1.textColor = [UIColor blackColor];
    //phone_label.backgroundColor = [UIColor yellowColor];
    phone_label1.text = @"+919963189728";
    [agent_view addSubview:phone_label1];
    add_label=[[UILabel alloc]initWithFrame:CGRectMake(10,10,100,100)];
    add_label.font=[UIFont fontWithName:@"Helvetica" size:13];
    add_label.textColor = [UIColor blackColor];
    //phone_label.backgroundColor = [UIColor yellowColor];
    add_label.text = @"Address:";
    add_label.lineBreakMode = NSLineBreakByWordWrapping;
    add_label.numberOfLines = 0;
    [agent_view addSubview:add_label];
    add_label1=[[UILabel alloc]initWithFrame:CGRectMake(150,10,300,100)];
    add_label1.font=[UIFont fontWithName:@"Helvetica" size:13];
    add_label1.textColor = [UIColor blackColor];
    //phone_label.backgroundColor = [UIColor yellowColor];
    add_label1.text = @"S/W/ABAPU62-6-11/1,SAMID,JUPURAM,  KAKINADA";
    add_label1.lineBreakMode = NSLineBreakByWordWrapping;
    add_label1.numberOfLines = 0;
    [agent_view addSubview:add_label1];
    
    amount_label=[[UILabel alloc]initWithFrame:CGRectMake(10,80,100,20)];
    amount_label.font=[UIFont fontWithName:@"Helvetica" size:13];
    amount_label.textColor = [UIColor blackColor];
    //phone_label.backgroundColor = [UIColor yellowColor];
    amount_label.text = @"Overdue Amoount:";
    [agent_view addSubview:amount_label];
    
    
    
    amount_label1=[[UILabel alloc]initWithFrame:CGRectMake(150,80,200,20)];
    amount_label1.font=[UIFont fontWithName:@"Helvetica" size:13];
    amount_label1.textColor = [UIColor blackColor];
    //phone_label.backgroundColor = [UIColor yellowColor];
    amount_label1.text = @"Rs 50000";
    [agent_view addSubview:amount_label1];
    
    interest_label=[[UILabel alloc]initWithFrame:CGRectMake(10,100,100,20)];
    interest_label.font=[UIFont fontWithName:@"Helvetica" size:13];
    interest_label.textColor = [UIColor blackColor];
    //phone_label.backgroundColor = [UIColor yellowColor];
    interest_label.text = @"Interest risk:";
    [agent_view addSubview:interest_label];
    
    interest_label1=[[UILabel alloc]initWithFrame:CGRectMake(150,100,200,20)];
    interest_label1.font=[UIFont fontWithName:@"Helvetica" size:13];
    interest_label1.textColor = [UIColor blackColor];
    //phone_label.backgroundColor = [UIColor yellowColor];
    interest_label1.text = @"A";
    [agent_view addSubview:interest_label1];

    
    
    
    UIButton *visit_btn = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    //agentloginbtn.layer.cornerRadius = 5;
    //    [agentloginbtn addTarget:self
    //                      action:@selector(agentloginbtn_Clicked)
    //            forControlEvents:UIControlEventTouchUpInside];
    [visit_btn setFrame:CGRectMake(10,130,100, 30)];
    visit_btn.backgroundColor=[UIColor colorWithRed:0.961 green:0.51 blue:0.125 alpha:1];
    [visit_btn setTitle:@"VISIT" forState:UIControlStateNormal];
    [visit_btn setTitleColor:[UIColor whiteColor] forState:
     UIControlStateNormal];
    [agent_view addSubview:visit_btn];
    UIButton *reminder_btn = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    [reminder_btn setFrame:CGRectMake(130,130,180, 30)];
    reminder_btn.backgroundColor=[UIColor colorWithRed:0.204 green:0.682 blue:0.937 alpha:1];
    [reminder_btn setTitle:@"SET REMINDER" forState:UIControlStateNormal];
    [reminder_btn setTitleColor:[UIColor whiteColor] forState:
     UIControlStateNormal];
    [agent_view addSubview:reminder_btn];
    

   // CollapseClick *cl=[[CollapseClick alloc]init];
    //cl.titleForCollapseClickAtIndex();

    switch (index) {
        case 0:
            
            
            // NSLog(@"element is %@",[loans_array[i] valueForKey:@"Loan Acc No"]);
            //NSString *lll=[loans_array[i] valueForKey:@"Loan Acc No"];
            

//            name_label.text =@"swati";
//            phone_label
//            add_label
//            amount_label
//            interest_label
//            //return test1View;
            
//            NSPredicate *predicate=[NSPredicate predicateWithFormat:@"stragentName=%@ || strpassword=%@",AgentUsernametextField.text,AgentPasswordtextField.text];
//            NSArray * arrResults=[arrAgent filteredArrayUsingPredicate:predicate];
//            AgentObject *dic=arrResults[0];
//            NSLog(@"ddddd is 1%@",dic.description);
//            NSLog(@"ddddd is 2%@",dic.strrecoveryBonus);
//            NSLog(@"ddddd is 3%@",dic.strpassword);
//            
//            NSString *str=dic.strrecoveryBonus;
//            //NSLog(@"7777775 is %@",str);
//            agent_vc.strTotalnumberOfCompletedVisits=dic.strnumberOfCompletedVisits;
//            agent_vc.strTotalnumberOfPendingVisits=dic.strnumberOfPendingVisits;
//            agent_vc.strTotalamountRecovered=dic.stramountRecovered;
//            agent_vc.strTotalrecoveryBonus=str;

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
    return [UIColor colorWithRed:0.494 green:0.804 blue:0.918 alpha:1];
    //return [UIColor colorWithRed:0.757 green:0.882 blue:0.973 alpha:1];
}


-(UIColor *)colorForTitleLabelAtIndex:(int)index {
    return [UIColor blackColor];
    //return [UIColor colorWithWhite:1.0 alpha:0.85];
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

-(void)callservice{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"DefaulterLoans" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    loans_array = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    // val=[sweet objectForKey:@"agentName"];
    NSLog(@"Array: %@", loans_array);
   

       for(NSDictionary *dictLoan in loans_array)
        
    {
        
        arrloan=[[NSMutableArray alloc] init];
        LoanObject  *objLoan = [[LoanObject alloc]init];
        objLoan.strname=[dictLoan valueForKey:@"Name"];
        objLoan.strloanno=[dictLoan valueForKey:@"Loan Acc No"];
        objLoan.straddress=[dictLoan valueForKey:@"Address"];
        objLoan.strintrstrisk=[dictLoan valueForKey:@"Interest Risk"];
        objLoan.stroverdueamnt=[dictLoan valueForKey:@"Overdue Amount"];
        objLoan.strphno=[dictLoan valueForKey:@"Phone No"];
        
                [arrloan addObject:objLoan];
        NSLog(@"loanssssssssssssssssssss is %@",objLoan.description);

        NSLog(@"loanssssssssssssssssssss is %d",arrloan.count);
        //objLoan = nil;
    }

    NSLog(@"appDelegate.arrFavoriteMade is1%@",[[arrloan objectAtIndex:0] valueForKey:@"straddress"]);
    
    
    }

// Example of change content view frame and then update collapseClick layout.
- (IBAction)buttonClicked:(id)sender {
    agent_view.frame = CGRectMake(0, 0, agent_view.frame.size.width,agent_view.frame.size.height + 50);
    [myCollapseClick setNeedsLayout];
}


@end
