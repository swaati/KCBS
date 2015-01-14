    //
    //  CustomerAddremindersVC.m
    //  KCBS
    //
    //  Created by YK Software Solutions on 08/12/14.
    //  Copyright (c) 2014 YK Software Solutions. All rights reserved.
    //

    #import "CustomerAddremindersVC.h"

    @interface CustomerAddremindersVC ()

    @end

    @implementation CustomerAddremindersVC
    @synthesize addreminder_view;
    @synthesize reminder_lbl;
    @synthesize scrollView_addreminder;
    @synthesize reminder_sbj_txt;
    @synthesize reminder_hr_txt;
    @synthesize reminder_days_txt;
    @synthesize reminder_months_txt;
    @synthesize datePicker;
    @synthesize cancel_btn;
    @synthesize save_btn;
    //@synthesize msgtxt_view;
    @synthesize set_reminderbtn;
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
        //[[self tabBarItem] setBadgeValue:@"42"];
        
        //self.tabBarController.tabBarItem.badgeValue=0;
        self.reminder_sbj_txt.delegate = self;
        
        self.parentViewController.navigationItem.titleView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"small.png"]];
        addreminder_view=[[UIView alloc]initWithFrame:CGRectMake(0,65, 320,65)];
        addreminder_view.backgroundColor=[UIColor colorWithRed:0.965 green:0.506 blue:0.129 alpha:1];;
        [self.view addSubview:addreminder_view];
        reminder_lbl= [[UILabel alloc]initWithFrame:CGRectMake(100,20,120,20)];
        reminder_lbl.font=[UIFont fontWithName:@"Helvetica-Bold" size:16];
        reminder_lbl.textColor = [UIColor whiteColor];
        reminder_lbl.backgroundColor = [UIColor clearColor];
        reminder_lbl.text = @"Add Reminders";
        [addreminder_view addSubview:reminder_lbl];
        scrollView_addreminder = [[UIScrollView alloc] initWithFrame:CGRectMake(0,130, 320,480)];
        scrollView_addreminder.backgroundColor = [UIColor clearColor];
        scrollView_addreminder.scrollEnabled = YES;
        scrollView_addreminder.pagingEnabled = YES;
        scrollView_addreminder.showsVerticalScrollIndicator = YES;
        scrollView_addreminder.showsHorizontalScrollIndicator = YES;
        scrollView_addreminder.contentSize = CGSizeMake(300, 500+0);
        [self.view addSubview:scrollView_addreminder];
        
        reminder_sbj_txt = [[UITextField  alloc] initWithFrame:
                            CGRectMake(20,10, 280, 30)];
        reminder_sbj_txt.borderStyle = UITextBorderStyleRoundedRect;
        reminder_sbj_txt.contentVerticalAlignment =UIControlContentVerticalAlignmentCenter;
        [reminder_sbj_txt setFont:[UIFont boldSystemFontOfSize:12]];
        reminder_sbj_txt.placeholder = @"SUBJECT";
        [scrollView_addreminder addSubview:reminder_sbj_txt];
        reminder_sbj_txt.delegate = self;
        reminder_sbj_txt.autocorrectionType = UITextAutocorrectionTypeNo;
        reminder_sbj_txt.returnKeyType = UIReturnKeyNext;
        reminder_sbj_txt.clearButtonMode = UITextFieldViewModeWhileEditing;
        reminder_hr_txt = [[UITextField  alloc] initWithFrame:
                           CGRectMake(20,50,80, 30)];
        reminder_hr_txt.borderStyle = UITextBorderStyleRoundedRect;
        reminder_hr_txt.contentVerticalAlignment =UIControlContentVerticalAlignmentCenter;
        [reminder_hr_txt setFont:[UIFont boldSystemFontOfSize:12]];
        reminder_hr_txt.placeholder = @"HOURS";
        [scrollView_addreminder addSubview:reminder_hr_txt];
        reminder_hr_txt.delegate = self;
        reminder_hr_txt.autocorrectionType = UITextAutocorrectionTypeNo;
        reminder_hr_txt.returnKeyType = UIReturnKeyNext;
        reminder_hr_txt.clearButtonMode = UITextFieldViewModeWhileEditing;
        
        reminder_days_txt = [[UITextField  alloc] initWithFrame:
                             CGRectMake(110,50,90, 30)];
        reminder_days_txt.borderStyle = UITextBorderStyleRoundedRect;
        reminder_days_txt.contentVerticalAlignment =UIControlContentVerticalAlignmentCenter;
        [reminder_days_txt setFont:[UIFont boldSystemFontOfSize:12]];
        reminder_days_txt.placeholder = @"DAYS";
        [scrollView_addreminder addSubview:reminder_days_txt];
        reminder_days_txt.delegate = self;
        reminder_days_txt.autocorrectionType = UITextAutocorrectionTypeNo;
        reminder_days_txt.returnKeyType = UIReturnKeyNext;
        reminder_days_txt.clearButtonMode = UITextFieldViewModeWhileEditing;
        reminder_months_txt = [[UITextField  alloc] initWithFrame:
                               CGRectMake(210,50,90, 30)];
        reminder_months_txt.borderStyle = UITextBorderStyleRoundedRect;
        reminder_months_txt.contentVerticalAlignment =UIControlContentVerticalAlignmentCenter;
        [reminder_months_txt setFont:[UIFont boldSystemFontOfSize:12]];
        reminder_months_txt.placeholder = @"MONTHS";
        [scrollView_addreminder addSubview:reminder_months_txt];
        reminder_months_txt.delegate = self;
        reminder_months_txt.autocorrectionType = UITextAutocorrectionTypeNo;
        reminder_months_txt.returnKeyType = UIReturnKeyNext;
        reminder_months_txt.clearButtonMode = UITextFieldViewModeWhileEditing;
        CGRect pickerFrame = CGRectMake(0,100,0,0);
        
        datePicker = [[UIDatePicker alloc] initWithFrame:pickerFrame];
        //    [datePicker addTarget:self action:@selector(pickerChanged:)               forControlEvents:UIControlEventValueChanged];
        [scrollView_addreminder addSubview:datePicker];
        NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *currentDate = [NSDate date];
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:30];
        NSDate *maxDate = [calendar dateByAddingComponents:comps toDate:currentDate options:0];
        [comps setYear:-30];
        NSDate *minDate = [calendar dateByAddingComponents:comps toDate:currentDate options:0];
        
        [datePicker setMaximumDate:maxDate];
        [datePicker setMinimumDate:minDate];
        UIBarButtonItem *cancel_btn=[[UIBarButtonItem alloc]
                                     initWithTitle:@"Cancel"
                                     style:UIBarButtonItemStyleBordered
                                     target:self
                                     action:@selector(cancel_clicked)];
        self.navigationItem.leftBarButtonItem = cancel_btn;
        
        UIBarButtonItem *save_btn=[[UIBarButtonItem alloc]
                                   initWithTitle:@"Save"
                                   style:UIBarButtonItemStyleBordered
                                   target:self
                                   action:@selector(save_clicked)];
        self.navigationItem.rightBarButtonItem = save_btn;
        //    datePicker.frame = CGRectMake(0,600,320,200);
        //        datePicker = [[UIDatePicker alloc]init];
        //
        //    [datePicker setBackgroundColor:[UIColor clearColor]];
        //    //datePicker.showsSelectionIndicator = YES;
        //    datePicker.tintColor=[UIColor orangeColor];
        //[scrollView_addreminder addSubview:datePicker];
        //    msgtxt_view=[[UITextView  alloc] initWithFrame:
        //                  CGRectMake(20,100, 280, 200)];
        //    // txt_comments.borderStyle = UITextBorderStyleRoundedRect;
        //    // txt_comments.contentVerticalAlignment =UIControlContentVerticalAlignmentCenter;
        //    [msgtxt_view setFont:[UIFont boldSystemFontOfSize:12]];
        //    //txt_comments.placeholder = @"User Name";
        //
        //    msgtxt_view.delegate = self;
        //    msgtxt_view.autocorrectionType = UITextAutocorrectionTypeNo;
        //    msgtxt_view.returnKeyType = UIReturnKeyNext;
        //    msgtxt_view.layer.borderWidth = 0.5f;
        //    msgtxt_view.layer.borderColor = [[UIColor grayColor] CGColor];
        //    //txt_comments.clearButtonMode = UITextFieldViewModeWhileEditing;
        //    [scrollView_addreminder addSubview:msgtxt_view];
        set_reminderbtn = [UIButton buttonWithType: UIButtonTypeRoundedRect];
        //agentloginbtn.layer.cornerRadius = 5;
        //agentloginbtn.layer.borderWidth = 1;
        [set_reminderbtn setBackgroundColor: [UIColor colorWithRed:0.302 green:0.569 blue:0.749 alpha:1]];
        [set_reminderbtn setTitleColor:[UIColor whiteColor] forState:
         UIControlStateNormal];
        //sets background image for normal state
        //    [agentloginbtn setBackgroundImage:[UIImage imageNamed:
        //                                      @"Button_Default.png"]
        //                            forState:UIControlStateNormal];
        //sets background image for highlighted state
        //[agentloginbtn setBackgroundImage:[UIImage imageNamed:
        ///@"Button_Highlighted.png"]
        //forState:UIControlStateHighlighted];
        [set_reminderbtn addTarget:self
                            action:@selector(setreminderbtn_Clicked)
                  forControlEvents:UIControlEventTouchUpInside];
        [set_reminderbtn setFrame:CGRectMake(20, 350, 280, 30)];
        [set_reminderbtn setTitle:@"SET REMINDER" forState:UIControlStateNormal];
        [scrollView_addreminder addSubview:set_reminderbtn];
        
        
        //txt_comments.placeholder = @"User Name";
        
        // Do any additional setup after loading the view from its nib.
    }
    -(void)cancel_clicked{
        [self.navigationController popViewControllerAnimated:YES];
        //[self.navigationController removeFromParentViewController:addremind_vc animated:YES];
        //[self.parentViewController dismissViewControllerAnimated:YES completion:nil];
    }
    -(void)save_clicked{
        [self.reminder_sbj_txt resignFirstResponder];
        NSDate *pickerDate = [self.datePicker date];
        
        // Schedule the notification
        UILocalNotification* localNotification = [[UILocalNotification alloc] init];
        localNotification.fireDate = pickerDate;
        
        //localNotification.soundName=@"John_Wesley_Coleman_-_07_-_Tequila_10_Seconds.mp3";
        localNotification.alertBody = self.reminder_sbj_txt.text;
        localNotification.alertAction = @"Show me the item";
        [localNotification setTimeZone:[NSTimeZone localTimeZone]];
        
        localNotification.applicationIconBadgeNumber = [[UIApplication sharedApplication] applicationIconBadgeNumber] + 1;
        //   [[self tabBarItem] setBadgeValue:[NSString stringWithFormat:@"%d",[[UIApplication sharedApplication] applicationIconBadgeNumber] + 1]];
        // [[self tabBarItem] setBadgeValue:1];
        [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
        
        // Request to reload table view data
        [[NSNotificationCenter defaultCenter] postNotificationName:@"reloadData" object:self];
        
        // Dismiss the view controller
        [self.navigationController popViewControllerAnimated:YES];
        //[self dismissViewControllerAnimated:YES completion:nil];
        
    }
    -(void)setreminderbtn_Clicked{
        
        
        
    }
    - (BOOL)textFieldShouldReturn:(UITextField *)textField
    {
        [self.reminder_sbj_txt resignFirstResponder];
        return NO;
    }

    - (void)didReceiveMemoryWarning
    {
        [super didReceiveMemoryWarning];
        // Dispose of any resources that can be recreated.
    }

    @end
