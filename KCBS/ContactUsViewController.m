//
//  ContactUsViewController.m
//  KCBS
//
//  Created by YK Software Solutions on 14/11/14.
//  Copyright (c) 2014 YK Software Solutions. All rights reserved.
//

#import "ContactUsViewController.h"

@interface ContactUsViewController ()

@end

@implementation ContactUsViewController
@synthesize imgview_contactus;
@synthesize contactusLabel;
@synthesize head_label;
@synthesize mng_label;
@synthesize mng_label2;
@synthesize add_label;
@synthesize add_label2;
@synthesize door_label;
@synthesize door_label2;
@synthesize ph_label;
@synthesize ph_label2;
@synthesize branch_label;
@synthesize branch_sublbl;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"small.png"]];

    //self.parentViewController.navigationItem.titleView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"small.png"]];
    //self.title=@"Contact Us";
    imgview_contactus = [[UIImageView alloc]
                        initWithFrame:CGRectMake(115,70, 100,100)];
    [imgview_contactus setImage:[UIImage imageNamed:@"round.png"]];
    [imgview_contactus setContentMode:UIViewContentModeScaleAspectFit];
    [self.view addSubview:imgview_contactus];

    ///label
    contactusLabel = [[UILabel alloc]initWithFrame:
                     CGRectMake(110, 150, 280, 80)];
    contactusLabel.numberOfLines = 0;
    contactusLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:16];
    contactusLabel.textColor = [UIColor colorWithRed:0.302 green:0.569 blue:0.749 alpha:1];
    contactusLabel.backgroundColor = [UIColor clearColor];
    contactusLabel.text = @"CONTACT US";
    [self.view addSubview:contactusLabel];
    ///headoffice label
    head_label =[[UILabel alloc]initWithFrame:CGRectMake(10, 160, 170, 100)];
    head_label.font=[UIFont fontWithName:@"Helvetica-Bold" size:16];
    head_label.textColor = [UIColor blackColor];
    head_label.backgroundColor = [UIColor clearColor];
    head_label.text = @"KCBS-HEAD OFFICE";
    [self.view addSubview:head_label];
    mng_label=[[UILabel alloc]initWithFrame:CGRectMake(10, 200, 100, 50)];
    mng_label.font=[UIFont fontWithName:@"HelveticaNeue-Medium" size:12];
    mng_label.textColor = [UIColor blackColor];
    mng_label.backgroundColor = [UIColor clearColor];
    mng_label.text = @"Manager  :";
    [self.view addSubview:mng_label];
    mng_label2=[[UILabel alloc]initWithFrame:CGRectMake(110, 200, 150, 50)];
    mng_label2.font=[UIFont fontWithName:@"HelveticaNeue-Medium" size:12];
    mng_label2.textColor = [UIColor blackColor];
    mng_label2.backgroundColor = [UIColor clearColor];
    mng_label2.text = @"T.V.Sree Rama Murthy";
    //mng_label2.lineBreakMode = NSLineBreakByWordWrapping;
    //mng_label2.numberOfLines = 0;

    [self.view addSubview:mng_label2];
    add_label=[[UILabel alloc]initWithFrame:CGRectMake(10, 220, 100, 50)];
    add_label.font=[UIFont fontWithName:@"HelveticaNeue-Medium" size:12];
    add_label.textColor = [UIColor blackColor];
    add_label.backgroundColor = [UIColor clearColor];
    add_label.text = @"Address   :";
    [self.view addSubview:add_label];
    
    add_label2=[[UILabel alloc]initWithFrame:CGRectMake(110, 220, 150, 50)];
    add_label2.font=[UIFont fontWithName:@"HelveticaNeue-Medium" size:12];
    add_label2.textColor = [UIColor blackColor];
    add_label2.backgroundColor = [UIColor clearColor];
    add_label2.text = @"Shri Kosuri Krishna rao sahakara sadan,";
    add_label2.lineBreakMode = NSLineBreakByWordWrapping;
    add_label2.numberOfLines = 0;
    [self.view addSubview:add_label2];

    door_label=[[UILabel alloc]initWithFrame:CGRectMake(10, 250, 100, 50)];
    door_label.font=[UIFont fontWithName:@"HelveticaNeue-Medium" size:12];
    door_label.textColor = [UIColor blackColor];
    door_label.backgroundColor = [UIColor clearColor];
    door_label.text = @"Door no  :";
    [self.view addSubview:door_label];
    door_label2=[[UILabel alloc]initWithFrame:CGRectMake(110, 260, 150, 50)];
    door_label2.font=[UIFont fontWithName:@"HelveticaNeue-Medium" size:12];
    door_label2.textColor = [UIColor blackColor];
    door_label2.backgroundColor = [UIColor clearColor];
    door_label2.text = @"13-4-13,Ramayya street,surya rao pet,kakinada";
    door_label2.lineBreakMode = NSLineBreakByWordWrapping;
    door_label2.numberOfLines = 0;
    [self.view addSubview:door_label2];
   
     ph_label=[[UILabel alloc]initWithFrame:CGRectMake(10, 290, 100, 50)];
     ph_label.font=[UIFont fontWithName:@"HelveticaNeue-Medium" size:12];
     ph_label.textColor = [UIColor blackColor];
     ph_label.backgroundColor = [UIColor clearColor];
     ph_label.text = @"Ph.No  :";
    [self.view addSubview: ph_label];
    ph_label2=[[UILabel alloc]initWithFrame:CGRectMake(115, 290, 100, 50)];
    ph_label2.font=[UIFont fontWithName:@"HelveticaNeue-Medium" size:12];
    ph_label2.textColor = [UIColor blackColor];
    ph_label2.backgroundColor = [UIColor clearColor];
    ph_label2.text = @"0884-2373630";
    [self.view addSubview: ph_label2];
     branch_label =[[UILabel alloc]initWithFrame:CGRectMake(10, 310, 200, 100)];
     branch_label.font=[UIFont fontWithName:@"Helvetica-Bold" size:16];
     branch_label.textColor = [UIColor blackColor];
     branch_label.backgroundColor = [UIColor clearColor];
     branch_label.text = @"KCBS-BRANCH OFFICE";
     [self.view addSubview:branch_label];
    branch_sublbl=[[UILabel alloc]initWithFrame:CGRectMake(10,340, 300, 100)];
    branch_sublbl.font=[UIFont fontWithName:@"HelveticaNeue-Medium" size:12];
    branch_sublbl.textColor = [UIColor blackColor];
    branch_sublbl.backgroundColor = [UIColor clearColor];
    branch_sublbl.text = @"Benda Complex,1st Floor,Sarpavaram Junction,Kakinada-533005";
    branch_sublbl.lineBreakMode = NSLineBreakByWordWrapping;
    branch_sublbl.numberOfLines = 0;
    [self.view addSubview: branch_sublbl];

        // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
