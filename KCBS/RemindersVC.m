//
//  RemindersVC.m
//  KCBS
//
//  Created by YK Software Solutions on 24/11/14.
//  Copyright (c) 2014 YK Software Solutions. All rights reserved.
//
//   NSDate *date = [NSDate date];
//    NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
//
//
//    [dateFormat setDateFormat:@"MMM dd, yyyy"];
//    NSString *dateString = [dateFormat stringFromDate:date];
//    NSArray *arr = [dateString componentsSeparatedByString:@" "];
//NSLog(@"Todays date is = %@",dateString);
//    NSLog(@"Todays date is = %@",arr);
//    NSString *first = [arr objectAtIndex:0];
//    NSLog(@"String at index 0 = %@", first);
//    NSString *second = [arr objectAtIndex:1];
//    NSLog(@"String at index 0 = %@", second);
//    NSString *third = [arr objectAtIndex:2];
//    NSLog(@"String at index 0 = %@", third);
//    NSMutableArray *tableContent = [[NSMutableArray alloc] initWithObjects:
//                                   second,first,third,nil];
//    NSString * result = [tableContent  componentsJoinedByString:@""];
//     NSLog(@"swati= %@", result);


#import "RemindersVC.h"

@interface RemindersVC ()

@end

@implementation RemindersVC
@synthesize reminders_view;
@synthesize reminders_lbl;
@synthesize date_lbl;
@synthesize paintView;
@synthesize logo;

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
      NSDate *date = [NSDate date];
       NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
    
   
       [dateFormat setDateFormat:@"MMM dd, yyyy"];
        NSString *dateString = [dateFormat stringFromDate:date];
     NSArray *arr = [dateString componentsSeparatedByString:@" "];
    NSLog(@"Todays date is = %@",dateString);
        NSLog(@"Todays date is = %@",arr);
        NSString *first = [arr objectAtIndex:0];
        NSLog(@"String at index 0 = %@", first);
        NSString *second = [arr objectAtIndex:1];
        NSLog(@"String at index 0 = %@", second);
        NSString *third = [arr objectAtIndex:2];
        NSLog(@"String at index 0 = %@", third);
       NSMutableArray *tableContent = [[NSMutableArray alloc] initWithObjects:
                                     second,first,third,nil];
        NSString * result = [tableContent  componentsJoinedByString:@""];
        NSLog(@"swati= %@", result);
    date_lbl=[[UILabel alloc]initWithFrame:CGRectMake(30,30,100,10)];
    date_lbl.font=[UIFont fontWithName:@"Helvetica-Bold" size:12];
    date_lbl.textColor = [UIColor blackColor];
    date_lbl.backgroundColor = [UIColor redColor];
    date_lbl.text =result;
    paintView=[[UIView alloc]initWithFrame:CGRectMake(30,10,100,40)];
    [paintView setBackgroundColor:[UIColor yellowColor]];
    self.parentViewController.navigationItem.titleView=paintView;
    logo=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"small.png"]];
    logo.frame=CGRectMake(10,10,44,29);
    [self.paintView addSubview:logo];
    [self.paintView addSubview:date_lbl];

//    self.parentViewController.navigationItem.titleView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"small.png"]];
    reminders_view=[[UIView alloc]initWithFrame:CGRectMake(0,65, 320,65)];
    reminders_view.backgroundColor=[UIColor colorWithRed:0.976 green:0.459 blue:0.016 alpha:1];
    [self.view addSubview:reminders_view];
    reminders_lbl= [[UILabel alloc]initWithFrame:CGRectMake(100,20,100,20)];
    reminders_lbl.font=[UIFont fontWithName:@"Helvetica-Bold" size:16];
    reminders_lbl.textColor = [UIColor whiteColor];
    reminders_lbl.backgroundColor = [UIColor clearColor];
    reminders_lbl.text = @"Reminders";
    [reminders_view addSubview:reminders_lbl];
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
