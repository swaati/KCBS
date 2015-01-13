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
@synthesize phone_label;
@synthesize add_label;
@synthesize amount_label;
@synthesize interest_label;
@synthesize imgview_defaultpro;
@synthesize loanaccno_lbl;
@synthesize loanaccdata_lbl;
@synthesize loanac_txtfld;
@synthesize nosearchbtn;
@synthesize loanmember_view;
@synthesize firstdatelbl;
@synthesize firstagentlbl;
@synthesize firstresultlbl;
@synthesize agentcomtlbl;
@synthesize loaneecomtlbl;
@synthesize save_btn;
@synthesize reset_btn;
@synthesize back_btn;
@synthesize firstdatetxt;
@synthesize firstagenttxt;
@synthesize firstresulttxt;
@synthesize agentcomttxt;
@synthesize loaneecomtxt;
@synthesize service_array;
@synthesize arrRecovery;
@synthesize detailloan_view;
@synthesize accno_lbl;
@synthesize accno_lbl1;
@synthesize outstamount_lbl;
@synthesize outstamount_lbl1;
@synthesize intrstrisk_lbl;
@synthesize intrstrisk_lbl1;
@synthesize loanqlity_lbl;
@synthesize loanqlity_lbl1;
@synthesize curtstatus_lbl;
@synthesize curtstatus_lbl1;
@synthesize detailoverview_view;
@synthesize principle_lbl;
@synthesize principle_lbl1;
@synthesize intrst_lbl;
@synthesize intrst_lbl1;
@synthesize penalintrst_lbl;
@synthesize penalintrst_lbl1;
@synthesize othercharges_lbl;
@synthesize othercharges_lbl1;
@synthesize totlbl;
@synthesize totlbl1;
@synthesize loanee_view;
@synthesize loniname_lbl;
@synthesize loniname_lbl1;
@synthesize loniphno_lbl;
@synthesize loniphno_lbl1;
@synthesize loniadrs_lbl;
@synthesize loniadrs_lbl1;
@synthesize others_view;
@synthesize lonname_lbl;
@synthesize lonname_lbl1;
@synthesize tigger;


//@synthesize myCollapseClick;
//@synthesize name_lbl;
- (void)viewDidLoad
{
    [super viewDidLoad];
    

    arrRecovery=[[NSMutableArray alloc]init];
    recovery_view=[[UIView alloc]initWithFrame:CGRectMake(0,65, 320,65)];
    recovery_view.backgroundColor=[UIColor colorWithRed:0.965 green:0.506 blue:0.129 alpha:1];
    [self.view addSubview:recovery_view];
    recovery_lbl= [[UILabel alloc]initWithFrame:CGRectMake(85,20,130,20)];
    recovery_lbl.font=[UIFont fontWithName:@"Helvetica" size:16];
    recovery_lbl.textColor = [UIColor whiteColor];
    ///defaulter_lbl.backgroundColor = [UIColor greenColor];
    recovery_lbl.text = @"Recovery Visit";
    [recovery_view addSubview:recovery_lbl];
    imgview_defaultpro = [[UIImageView alloc]
                          initWithFrame:CGRectMake(10,12,40,40)];
    [imgview_defaultpro setImage:[UIImage imageNamed:@"defaulterLoanSIcon.png"]];
    [imgview_defaultpro setContentMode:UIViewContentModeScaleAspectFit];
    [recovery_view addSubview:imgview_defaultpro];
    loanaccno_lbl=[[UILabel alloc]initWithFrame:CGRectMake(10,150,100,20)];
    loanaccno_lbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    loanaccno_lbl.textColor = [UIColor blackColor];
    ///defaulter_lbl.backgroundColor = [UIColor greenColor];
    loanaccno_lbl.text = @"Loan Ac No:";
    [self.view addSubview:loanaccno_lbl];
//    loanaccdata_lbl=[[UILabel alloc]initWithFrame:CGRectMake(105,150,100,20)];
//    loanaccdata_lbl.font=[UIFont fontWithName:@"Helvetica" size:14];
//    loanaccdata_lbl.textColor = [UIColor blackColor];
//    ///defaulter_lbl.backgroundColor = [UIColor greenColor];
//    loanaccdata_lbl.text = @"AP-001-HL-";
//    [self.view addSubview:loanaccdata_lbl];
    loanac_txtfld = [[UITextField  alloc] initWithFrame:
                              CGRectMake(95,150,140,20)];
    loanac_txtfld.borderStyle = UITextBorderStyleRoundedRect;
    loanac_txtfld.contentVerticalAlignment =UIControlContentVerticalAlignmentCenter;
    [loanac_txtfld setFont:[UIFont boldSystemFontOfSize:12]];
    //loanac_txtfld.placeholder = @"User Name";
    
    loanac_txtfld.delegate = self;
    loanac_txtfld.autocorrectionType = UITextAutocorrectionTypeNo;
    loanac_txtfld.returnKeyType = UIReturnKeyNext;
    loanac_txtfld.clearButtonMode = UITextFieldViewModeWhileEditing;
    [self.view addSubview:loanac_txtfld];
    nosearchbtn=[UIButton buttonWithType: UIButtonTypeRoundedRect];
    nosearchbtn.layer.cornerRadius = 5;
    [nosearchbtn setFrame:CGRectMake(245,150,60,20)];
    nosearchbtn.backgroundColor=[UIColor colorWithRed:0.961 green:0.51 blue:0.125 alpha:1];
    [nosearchbtn setTitle:@"Search" forState:UIControlStateNormal];
    [nosearchbtn setTitleColor:[UIColor whiteColor] forState:
     UIControlStateNormal];
    [nosearchbtn addTarget:self
                      action:@selector(nosearchbtn_Clicked)
            forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:nosearchbtn];
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
-(void)nosearchbtn_Clicked
{
    
    [self calldservice];

    
    NSLog(@"method value is%@",[self viewForCollapseClickContentViewAtIndex:0]);

    if((loanac_txtfld.text && ![loanac_txtfld.text isKindOfClass:[NSNull class]]))
    {
        
        NSPredicate *predicate=[NSPredicate predicateWithFormat:@"strloan_no=%@",loanac_txtfld.text];
        NSArray * arrResults1=[arrRecovery filteredArrayUsingPredicate:predicate];
        RecoveryObject *dic=arrResults1[0];
        NSLog(@"ddddd is 1%@",dic.description);
        NSLog(@"ddddd is 2%@",dic.strphno);
        NSLog(@"ddddd is 3%@",dic.straddress);
      
         //[self viewForCollapseClickContentViewAtIndex:0];
        outstamount_lbl1=[[UILabel alloc]initWithFrame:CGRectMake(150,20,200,20)];
       // outstamount_lbl1.backgroundColor=
        outstamount_lbl1.font=[UIFont fontWithName:@"Helvetica" size:13];
        outstamount_lbl1.textColor = [UIColor blackColor];
        outstamount_lbl1.text=dic.stroutstandingamnt;
        tigger=dic.stroutstandingamnt;
        //phone_label.backgroundColor = [UIColor yellowColor];
        ///phone_label1.text = @"+919963189728";
       
        NSLog(@"method value is%@",[[[self viewForCollapseClickContentViewAtIndex:0] subviews] objectAtIndex:4]);
                //CollapseClick *sw=[[CollapseClick alloc]init];
       //[sw closeCollapseClickCellAtIndex:0 animated:YES];
        //[sw viewForCollapseClickAtIndex:(UIView) *detailloan_view];
//        outstamount_lbl1=[[UILabel alloc]initWithFrame:CGRectMake(150,20,200,20)];
//        outstamount_lbl1.font=[UIFont fontWithName:@"Helvetica" size:13];
//        outstamount_lbl1.textColor = [UIColor blackColor];
//        
//
//              outstamount_lbl1.text=dic.stroutstandingamnt;
//
//
        NSLog(@"erhwejefjcehfchndsfdsf is %@",outstamount_lbl1.text);
        
    }
NSLog(@"erhwejefjcehfchndsfdsf is %@",outstamount_lbl1.text);
   
}

#pragma mark - Collapse Click Delegate

// Required Methods
-(int)numberOfCellsForCollapseClick {
   
    return 10;
}

-(NSString *)titleForCollapseClickAtIndex:(int)index {
    
    
    
    switch (index) {
        case 0:
            return @"Loan details";
            break;
        case 1:
            return @"Overdue Details";
            break;
        case 2:
            return @"Loanee Details";
            break;
        case 3:
            return @"Other Loan Members";
            break;
        case 4:
            return @"Recovery Visit";
            break;
        default:
            return @"";
            break;
    }
}

-(UIView *)viewForCollapseClickContentViewAtIndex:(int)index {
    [self calldservice];
    NSLog(@"servicearray is%d",[service_array count]);
    others_view=[[UIView alloc]initWithFrame:CGRectMake(0,0, 320,100)];
    others_view.backgroundColor=[UIColor whiteColor];
    lonname_lbl=[[UILabel alloc]initWithFrame:CGRectMake(10,0,140,20)];
    lonname_lbl.font=[UIFont fontWithName:@"Helvetica" size:13];
    lonname_lbl.textColor = [UIColor blackColor];
    //name_label.backgroundColor = [UIColor yellowColor];
    lonname_lbl.text = @"AP-001-012345:";
    [others_view addSubview:lonname_lbl];
    lonname_lbl1=[[UILabel alloc]initWithFrame:CGRectMake(150,0,200,20)];
    lonname_lbl1.font=[UIFont fontWithName:@"Helvetica" size:13];
    lonname_lbl1.textColor = [UIColor blackColor];
    lonname_lbl1.text=@"Pulla Rao";
    //name_label.backgroundColor = [UIColor yellowColor];
    //name_label1.text = @"SWATI ROUT";
    [others_view addSubview:lonname_lbl1];

    loanee_view=[[UIView alloc]initWithFrame:CGRectMake(0,0, 320,100)];
    loanee_view.backgroundColor=[UIColor whiteColor];
    loniname_lbl=[[UILabel alloc]initWithFrame:CGRectMake(10,0,140,20)];
    loniname_lbl.font=[UIFont fontWithName:@"Helvetica" size:13];
    loniname_lbl.textColor = [UIColor blackColor];
    //name_label.backgroundColor = [UIColor yellowColor];
    loniname_lbl.text = @"Name:";
    [loanee_view addSubview:loniname_lbl];
    loniname_lbl1=[[UILabel alloc]initWithFrame:CGRectMake(150,0,200,20)];
    loniname_lbl1.font=[UIFont fontWithName:@"Helvetica" size:13];
    loniname_lbl1.textColor = [UIColor blackColor];
    loniname_lbl1.text=@"Pulla Rao";
    //name_label.backgroundColor = [UIColor yellowColor];
    //name_label1.text = @"SWATI ROUT";
    [loanee_view addSubview:loniname_lbl1];
    loniphno_lbl=[[UILabel alloc]initWithFrame:CGRectMake(10,20,140,20)];
    loniphno_lbl.font=[UIFont fontWithName:@"Helvetica" size:13];
    loniphno_lbl.textColor = [UIColor blackColor];
    //name_label.backgroundColor = [UIColor yellowColor];
    loniphno_lbl.text = @"Phone No:";
    [loanee_view addSubview:loniphno_lbl];
    loniphno_lbl1=[[UILabel alloc]initWithFrame:CGRectMake(150,20,200,20)];
    loniphno_lbl1.font=[UIFont fontWithName:@"Helvetica" size:13];
    loniphno_lbl1.textColor = [UIColor blackColor];
    loniphno_lbl1.text=@"973957934573";
    //name_label.backgroundColor = [UIColor yellowColor];
    //name_label1.text = @"SWATI ROUT";
    [loanee_view addSubview:loniphno_lbl1];
    loniadrs_lbl=[[UILabel alloc]initWithFrame:CGRectMake(10,40,140,20)];
    loniadrs_lbl.font=[UIFont fontWithName:@"Helvetica" size:13];
    loniadrs_lbl.textColor = [UIColor blackColor];
    //name_label.backgroundColor = [UIColor yellowColor];
    loniadrs_lbl.text = @"Address:";
    [loanee_view addSubview:loniadrs_lbl];
    loniadrs_lbl1=[[UILabel alloc]initWithFrame:CGRectMake(150,40,200,20)];
    loniadrs_lbl1.font=[UIFont fontWithName:@"Helvetica" size:13];
    loniadrs_lbl1.textColor = [UIColor blackColor];
    loniadrs_lbl1.text=@"S/W/OSATHI BABU62-6-11/1, SAMMIDIVARIST,JAGANADDHPURAM,KAKINADA";
    loniadrs_lbl1.lineBreakMode=NSLineBreakByWordWrapping;
    //name_label.backgroundColor = [UIColor yellowColor];
    //name_label1.text = @"SWATI ROUT";
    [loanee_view addSubview:loniadrs_lbl1];
    
    detailloan_view=[[UIView alloc]initWithFrame:CGRectMake(0,0, 320,100)];
    detailloan_view.backgroundColor=[UIColor whiteColor];
    //[self.view addSubview:detailloan_view];
    accno_lbl=[[UILabel alloc]initWithFrame:CGRectMake(10,0,140,20)];
    accno_lbl.font=[UIFont fontWithName:@"Helvetica" size:13];
    accno_lbl.textColor = [UIColor blackColor];
    //name_label.backgroundColor = [UIColor yellowColor];
    accno_lbl.text = @"Loan Account No:";
    [detailloan_view addSubview:accno_lbl];
    accno_lbl1=[[UILabel alloc]initWithFrame:CGRectMake(150,0,200,20)];
    accno_lbl1.font=[UIFont fontWithName:@"Helvetica" size:13];
    accno_lbl1.textColor = [UIColor blackColor];
    accno_lbl1.text=@"AP-001-HL-000123";
    //name_label.backgroundColor = [UIColor yellowColor];
    //name_label1.text = @"SWATI ROUT";
    [detailloan_view addSubview:accno_lbl1];
    outstamount_lbl=[[UILabel alloc]initWithFrame:CGRectMake(10,20,140,20)];
    outstamount_lbl.font=[UIFont fontWithName:@"Helvetica" size:13];
    outstamount_lbl.textColor = [UIColor blackColor];
    //phone_label.backgroundColor = [UIColor yellowColor];
    outstamount_lbl.text = @"Outstanding Amount:";
    [detailloan_view addSubview:outstamount_lbl];
    
    ///*****overdue
    ///*****
    
    
    intrstrisk_lbl=[[UILabel alloc]initWithFrame:CGRectMake(10,40,140,20)];
    intrstrisk_lbl.font=[UIFont fontWithName:@"Helvetica" size:13];
    intrstrisk_lbl.textColor = [UIColor blackColor];
    //phone_label.backgroundColor = [UIColor yellowColor];
    intrstrisk_lbl.text = @"Interest Risk:";
    [detailloan_view addSubview:intrstrisk_lbl];
    intrstrisk_lbl1=[[UILabel alloc]initWithFrame:CGRectMake(150,40,200,20)];
    intrstrisk_lbl1.font=[UIFont fontWithName:@"Helvetica" size:13];
    intrstrisk_lbl1.textColor = [UIColor blackColor];
    intrstrisk_lbl1.text=@"A-Low";
    //phone_label.backgroundColor = [UIColor yellowColor];
    ///phone_label1.text = @"+919963189728";
    [detailloan_view addSubview:intrstrisk_lbl1];
    loanqlity_lbl=[[UILabel alloc]initWithFrame:CGRectMake(10,60,140,20)];
    loanqlity_lbl.font=[UIFont fontWithName:@"Helvetica" size:13];
    loanqlity_lbl.textColor = [UIColor blackColor];
    //phone_label.backgroundColor = [UIColor yellowColor];
    loanqlity_lbl.text = @"Loan Quality:";
    [detailloan_view addSubview:loanqlity_lbl];
    loanqlity_lbl1=[[UILabel alloc]initWithFrame:CGRectMake(150,60,200,20)];
    loanqlity_lbl1.font=[UIFont fontWithName:@"Helvetica" size:13];
    loanqlity_lbl1.textColor = [UIColor blackColor];
    loanqlity_lbl1.text=@"Good";
    //phone_label.backgroundColor = [UIColor yellowColor];
    ///phone_label1.text = @"+919963189728";
    [detailloan_view addSubview:loanqlity_lbl1];
    curtstatus_lbl=[[UILabel alloc]initWithFrame:CGRectMake(10,80,140,20)];
    curtstatus_lbl.font=[UIFont fontWithName:@"Helvetica" size:13];
    curtstatus_lbl.textColor = [UIColor blackColor];
    //phone_label.backgroundColor = [UIColor yellowColor];
    curtstatus_lbl.text = @"Current Status:";
    [detailloan_view addSubview:curtstatus_lbl];
    curtstatus_lbl1=[[UILabel alloc]initWithFrame:CGRectMake(150,80,200,20)];
    curtstatus_lbl1.font=[UIFont fontWithName:@"Helvetica" size:13];
    curtstatus_lbl1.textColor = [UIColor blackColor];
    curtstatus_lbl1.text=@"Approved";
    //phone_label.backgroundColor = [UIColor yellowColor];
    ///phone_label1.text = @"+919963189728";
    [detailloan_view addSubview:curtstatus_lbl1];
    
    [detailloan_view addSubview:outstamount_lbl1];
    

    detailoverview_view=[[UIView alloc]initWithFrame:CGRectMake(0,0, 320,100)];
    detailoverview_view.backgroundColor=[UIColor whiteColor];
    principle_lbl=[[UILabel alloc]initWithFrame:CGRectMake(10,0,140,20)];
    principle_lbl.font=[UIFont fontWithName:@"Helvetica" size:13];
    principle_lbl.textColor = [UIColor blackColor];
    //name_label.backgroundColor = [UIColor yellowColor];
    principle_lbl.text = @"Priciple:";
    [detailoverview_view addSubview:principle_lbl];
    principle_lbl1=[[UILabel alloc]initWithFrame:CGRectMake(150,0,200,20)];
    principle_lbl1.font=[UIFont fontWithName:@"Helvetica" size:13];
    principle_lbl1.textColor = [UIColor blackColor];
    principle_lbl1.text=@"Rs 61,333";
    //name_label.backgroundColor = [UIColor yellowColor];
    //name_label1.text = @"SWATI ROUT";
    [detailoverview_view addSubview:principle_lbl1];

    intrst_lbl=[[UILabel alloc]initWithFrame:CGRectMake(10,20,140,20)];
    intrst_lbl.font=[UIFont fontWithName:@"Helvetica" size:13];
    intrst_lbl.textColor = [UIColor blackColor];
    //name_label.backgroundColor = [UIColor yellowColor];
    intrst_lbl.text = @"Interest:";
    [detailoverview_view addSubview:intrst_lbl];
    intrst_lbl1=[[UILabel alloc]initWithFrame:CGRectMake(150,20,200,20)];
    intrst_lbl1.font=[UIFont fontWithName:@"Helvetica" size:13];
    intrst_lbl1.textColor = [UIColor blackColor];
    intrst_lbl1.text=@"Rs 28,608";
    [detailoverview_view addSubview:intrst_lbl1];
    penalintrst_lbl=[[UILabel alloc]initWithFrame:CGRectMake(10,40,140,20)];
    penalintrst_lbl.font=[UIFont fontWithName:@"Helvetica" size:13];
    penalintrst_lbl.textColor = [UIColor blackColor];
    //name_label.backgroundColor = [UIColor yellowColor];
    penalintrst_lbl.text = @"Penal Interest:";
    [detailoverview_view addSubview:penalintrst_lbl];
    penalintrst_lbl1=[[UILabel alloc]initWithFrame:CGRectMake(150,40,200,20)];
    penalintrst_lbl1.font=[UIFont fontWithName:@"Helvetica" size:13];
    penalintrst_lbl1.textColor = [UIColor blackColor];
    penalintrst_lbl1.text=@"Rs 28,608";
    [detailoverview_view addSubview:penalintrst_lbl1];
    othercharges_lbl=[[UILabel alloc]initWithFrame:CGRectMake(10,60,140,20)];
    othercharges_lbl.font=[UIFont fontWithName:@"Helvetica" size:13];
    othercharges_lbl.textColor = [UIColor blackColor];
    //name_label.backgroundColor = [UIColor yellowColor];
    othercharges_lbl.text = @"Other Charges:";
    [detailoverview_view addSubview:othercharges_lbl];

    othercharges_lbl1=[[UILabel alloc]initWithFrame:CGRectMake(150,60,200,20)];
    othercharges_lbl1.font=[UIFont fontWithName:@"Helvetica" size:13];
    othercharges_lbl1.textColor = [UIColor blackColor];
    othercharges_lbl1.text=@"Rs 0";
    [detailoverview_view addSubview:othercharges_lbl1];
    totlbl=[[UILabel alloc]initWithFrame:CGRectMake(10,80,140,20)];
    totlbl.font=[UIFont fontWithName:@"Helvetica" size:13];
    totlbl.textColor = [UIColor blackColor];
    //name_label.backgroundColor = [UIColor yellowColor];
    totlbl.text = @"Total:";
    [detailoverview_view addSubview:totlbl];

    totlbl1=[[UILabel alloc]initWithFrame:CGRectMake(150,80,200,20)];
    totlbl1.font=[UIFont fontWithName:@"Helvetica" size:13];
    totlbl1.textColor = [UIColor blackColor];
    totlbl1.text=@"Rs 90,000";
    [detailoverview_view addSubview:totlbl1];
//    NSMutableArray *arrRecovery=[[NSMutableArray alloc]init];
    
    

    loanmember_view=[[UIView alloc]initWithFrame:CGRectMake(0,0, 320,200)];
    loanmember_view.backgroundColor=[UIColor whiteColor];
    //[self.view addSubview:loanmember_view];
    firstdatelbl=[[UILabel alloc]initWithFrame:CGRectMake(20,15,60,20)];
    firstdatelbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    firstdatelbl.textColor = [UIColor blackColor];
    firstdatelbl.backgroundColor = [UIColor clearColor];
    firstdatelbl.text = @"Date";
    [loanmember_view addSubview:firstdatelbl];
    firstagentlbl=[[UILabel alloc]initWithFrame:CGRectMake(20,40,60,20)];
    firstagentlbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    firstagentlbl.textColor = [UIColor blackColor];
    firstagentlbl.backgroundColor = [UIColor clearColor];
    firstagentlbl.text = @"Agent";
    [loanmember_view addSubview:firstagentlbl];
    firstresultlbl=[[UILabel alloc]initWithFrame:CGRectMake(20,65,60,20)];
    firstresultlbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    firstresultlbl.textColor = [UIColor blackColor];
    firstresultlbl.backgroundColor = [UIColor clearColor];
    firstresultlbl.text = @"Result";
    [loanmember_view addSubview:firstresultlbl];
    agentcomtlbl=[[UILabel alloc]initWithFrame:CGRectMake(20,90,150,20)];
    agentcomtlbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    agentcomtlbl.textColor = [UIColor blackColor];
    agentcomtlbl.backgroundColor = [UIColor clearColor];
    agentcomtlbl.text = @"Agent Comments";
    [loanmember_view addSubview:agentcomtlbl];
    loaneecomtlbl=[[UILabel alloc]initWithFrame:CGRectMake(20,115,150,20)];
    loaneecomtlbl.font=[UIFont fontWithName:@"Helvetica" size:14];
    loaneecomtlbl.textColor = [UIColor blackColor];
    loaneecomtlbl.backgroundColor = [UIColor clearColor];
    loaneecomtlbl.text = @"Loanee Comments";
    [loanmember_view addSubview:loaneecomtlbl];
    //         @synthesize firstagenttxt;
    //     @synthesize firstresulttxt;
    //     @synthesize agentcomttxt;
    //     @synthesize loaneecomtxt;
    firstdatetxt = [[UITextField  alloc] initWithFrame:
                    CGRectMake(150,15,150,20)];
    firstdatetxt.borderStyle = UITextBorderStyleRoundedRect;
    firstdatetxt.contentVerticalAlignment =UIControlContentVerticalAlignmentCenter;
    [firstdatetxt setFont:[UIFont boldSystemFontOfSize:12]];
    firstdatetxt.delegate = self;
    firstdatetxt.autocorrectionType = UITextAutocorrectionTypeNo;
    firstdatetxt.returnKeyType = UIReturnKeyNext;
    firstdatetxt.clearButtonMode = UITextFieldViewModeWhileEditing;
    [loanmember_view addSubview:firstdatetxt];
    firstagenttxt= [[UITextField  alloc] initWithFrame:
                    CGRectMake(150,40,150,20)];
    firstagenttxt.borderStyle = UITextBorderStyleRoundedRect;
    firstagenttxt.contentVerticalAlignment =UIControlContentVerticalAlignmentCenter;
    [firstagenttxt setFont:[UIFont boldSystemFontOfSize:12]];
    firstagenttxt.delegate = self;
    firstagenttxt.autocorrectionType = UITextAutocorrectionTypeNo;
    firstagenttxt.returnKeyType = UIReturnKeyNext;
    firstagenttxt.clearButtonMode = UITextFieldViewModeWhileEditing;
    [loanmember_view addSubview:firstagenttxt];
    firstresulttxt= [[UITextField  alloc] initWithFrame:
                     CGRectMake(150,65,150,20)];
    firstresulttxt.borderStyle = UITextBorderStyleRoundedRect;
    firstresulttxt.contentVerticalAlignment =UIControlContentVerticalAlignmentCenter;
    [firstresulttxt setFont:[UIFont boldSystemFontOfSize:12]];
    firstresulttxt.delegate = self;
    firstresulttxt.autocorrectionType = UITextAutocorrectionTypeNo;
    firstresulttxt.returnKeyType = UIReturnKeyNext;
    firstresulttxt.clearButtonMode = UITextFieldViewModeWhileEditing;
    [loanmember_view addSubview:firstresulttxt];
    
    agentcomttxt=[[UITextField  alloc] initWithFrame:
                  CGRectMake(150,90,150,20)];
    agentcomttxt.borderStyle = UITextBorderStyleRoundedRect;
    agentcomttxt.contentVerticalAlignment =UIControlContentVerticalAlignmentCenter;
    [agentcomttxt setFont:[UIFont boldSystemFontOfSize:12]];
    agentcomttxt.delegate = self;
    agentcomttxt.autocorrectionType = UITextAutocorrectionTypeNo;
    agentcomttxt.returnKeyType = UIReturnKeyNext;
    agentcomttxt.clearButtonMode = UITextFieldViewModeWhileEditing;
    [loanmember_view addSubview:agentcomttxt];
    loaneecomtxt=[[UITextField  alloc] initWithFrame:
                  CGRectMake(150,115,150,20)];
    loaneecomtxt.borderStyle = UITextBorderStyleRoundedRect;
    loaneecomtxt.contentVerticalAlignment =UIControlContentVerticalAlignmentCenter;
    [loaneecomtxt setFont:[UIFont boldSystemFontOfSize:12]];
    loaneecomtxt.delegate = self;
    loaneecomtxt.autocorrectionType = UITextAutocorrectionTypeNo;
    loaneecomtxt.returnKeyType = UIReturnKeyNext;
    loaneecomtxt.clearButtonMode = UITextFieldViewModeWhileEditing;
    [loanmember_view addSubview:loaneecomtxt];
    
    //save_btn;
    //reset_btn;
    //back_btn;
    save_btn=[UIButton buttonWithType: UIButtonTypeRoundedRect];
    save_btn.layer.cornerRadius = 5;
    [save_btn setFrame:CGRectMake(10,150,80, 30)];
    save_btn.backgroundColor=[UIColor colorWithRed:0.961 green:0.51 blue:0.125 alpha:1];
    [save_btn setTitle:@"Save" forState:UIControlStateNormal];
    [save_btn setTitleColor:[UIColor whiteColor] forState:
     UIControlStateNormal];
    [loanmember_view addSubview:save_btn];
    reset_btn=[UIButton buttonWithType: UIButtonTypeRoundedRect];
    reset_btn.layer.cornerRadius = 5;
    [reset_btn setFrame:CGRectMake(100,150,80, 30)];
    reset_btn.backgroundColor=[UIColor colorWithRed:0.961 green:0.51 blue:0.125 alpha:1];
    [reset_btn setTitle:@"Reset" forState:UIControlStateNormal];
    [reset_btn setTitleColor:[UIColor whiteColor] forState:
     UIControlStateNormal];
    [loanmember_view addSubview:reset_btn];
    back_btn=[UIButton buttonWithType: UIButtonTypeRoundedRect];
    back_btn.layer.cornerRadius = 5;
    
    [back_btn setFrame:CGRectMake(190,150,80, 30)];
    back_btn.backgroundColor=[UIColor colorWithRed:0.961 green:0.51 blue:0.125 alpha:1];
    [back_btn setTitle:@"Reset" forState:UIControlStateNormal];
    [back_btn setTitleColor:[UIColor whiteColor] forState:
     UIControlStateNormal];
    [loanmember_view addSubview:back_btn];

   //[self calldservice];
   NSPredicate *predicate=[NSPredicate predicateWithFormat:@"strname=%@",@"DASARI"];
    NSMutableArray *arrResults=[arrRecovery filteredArrayUsingPredicate:predicate];
    RecoveryObject *dic=arrResults[0];
    NSLog(@"ddddd is 1%@",dic.description);
   NSLog(@"ddddd is 2%@",dic.strtotal);
   NSLog(@"ddddd is 3%@",dic.strphno);
//
    //[self calldservice];
//    NSLog(@"ddddd is %@",arrRecovery.description);
   
    //agent_vc.strTotalnumberOfCompletedVisits=@"swati";
//    if((loanac_txtfld.text && ![loanac_txtfld.text isKindOfClass:[NSNull class]]))
//    {
    

      //
//        NSString *str=dic.strphno;
//        NSLog(@"7777775 is %@",str);
    
        
   // }

    //self.loanac_txtfld=
    switch (index) {
        case 0:
            //return test1View;
            //return agent_view;
             NSLog(@"999999999 %@",outstamount_lbl1.text);
            [detailloan_view addSubview:outstamount_lbl1];
            
            return detailloan_view;
            break;
        case 1:
            return detailoverview_view;
            //return test2View;
            //return agent_view;
            
            break;
        case 2:
            return loanee_view;
            //return test3View;
            //return agent_view;
            
            break;
        case 3:
            return others_view;
            //return test4View;
           /// return agent_view;
        case 4:
            return loanmember_view;
            //return test4View;
            /// return agent_view;
        default:
            return NULL;
            //return test1View;
            //return agent_view;
            
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

// Example of change content view frame and then update collapseClick layout.
- (IBAction)buttonClicked:(id)sender {
    agent_view.frame = CGRectMake(0, 0, agent_view.frame.size.width,agent_view.frame.size.height + 50);
    [myCollapseClick setNeedsLayout];
}


-(void)calldservice
{
    //NSMutableArray *arrRecovery=[[NSMutableArray alloc]init];
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"AgentRecovery" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    service_array = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    NSLog(@"Array rcovery : %@", service_array);
    
    for(NSDictionary *dicrecovery in service_array)
        
    {
        
       RecoveryObject *objrec = [[RecoveryObject alloc]init];
        objrec.strloan_no=[dicrecovery valueForKey:@"Loan No"];
       objrec.stroutstandingamnt=[dicrecovery valueForKey:@"Outstanding Amount"];
        objrec.strintrstrisk=[dicrecovery valueForKey:@"Interest Risk"];
        objrec.strloanqlity=[dicrecovery valueForKey:@"Loan Quality"];
        objrec.strcurntstatus=[dicrecovery valueForKey:@"Current Status"];
        objrec.strprinciple=[dicrecovery valueForKey:@"Principle"];
        objrec.strintrst=[dicrecovery valueForKey:@"Interest"];
        objrec.strotherchrge=[dicrecovery valueForKey:@"(Other Charges)"];
        objrec.strtotal=[dicrecovery valueForKey:@"Total"];
        objrec.strname=[dicrecovery valueForKey:@"Name"];
        objrec.strphno=[dicrecovery valueForKey:@"Phone No"];
        objrec.straddress=[dicrecovery valueForKey:@"Address"];
        [arrRecovery addObject:objrec];
       
    }
    NSLog(@"appDelegate.arrFavoriteMade is1%@", arrRecovery.description);
//    if((loanac_txtfld.text && ![loanac_txtfld.text isKindOfClass:[NSNull class]]))
//    {
//        
//        NSPredicate *predicate=[NSPredicate predicateWithFormat:@"strloan_no=%@",loanac_txtfld.text];
//        NSArray * arrResults=[arrRecovery filteredArrayUsingPredicate:predicate];
//        //RecoveryObject *dic=arrResults[0];
////        NSLog(@"ddddd is 1%@",dic.description);
////        NSLog(@"ddddd is 2%@",dic.strphno);
////        NSLog(@"ddddd is 3%@",dic.straddress);
////        outstamount_lbl1.text=dic.stroutstandingamnt;
////        
////        
//    }

}

@end
