    //
    //  FeedbackViewController.m
    //  KCBS
    //
    //  Created by YK Software Solutions on 14/11/14.
    //  Copyright (c) 2014 YK Software Solutions. All rights reserved.
    //

    #import "FeedbackViewController.h"

    @interface FeedbackViewController ()

    @end

    @implementation FeedbackViewController
    @synthesize scrollView_feedback;
    @synthesize imgview_feedback;
    @synthesize feedbackLabel;
    @synthesize ratingLabel;
    @synthesize type;
    @synthesize comm_lbl;
    @synthesize email_lbl;
    @synthesize pickerArray;


    @synthesize txt_comments;
    @synthesize feedbacktype_txt;

    @synthesize feedbackemail_textField;
    @synthesize submitbtn;
    @synthesize type_picker;
    //@synthesize btn1;
    //@synthesize btn2;
    //@synthesize btn3;
    //@synthesize btn4;
    //@synthesize btn5;

    @synthesize buttonHolderArray;

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
        // self.title=@"Feedback";
        _controlGroup = [[ControlGroup alloc] init];
        
        // selected=NO;
        //tag=0;
        scrollView_feedback = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320,500)];
        scrollView_feedback.backgroundColor = [UIColor clearColor];
        scrollView_feedback.scrollEnabled = YES;
        scrollView_feedback.pagingEnabled = YES;
        scrollView_feedback.showsVerticalScrollIndicator = YES;
        scrollView_feedback.showsHorizontalScrollIndicator = YES;
        scrollView_feedback.contentSize = CGSizeMake(300, 500+0);
        [self.view addSubview:scrollView_feedback];
        buttonHolderArray = [[NSMutableArray alloc] init];
        imgview_feedback = [[UIImageView alloc]
                         initWithFrame:CGRectMake(115,80, 100,100)];
        [imgview_feedback setImage:[UIImage imageNamed:@"feedbackBIcon.png"]];
        [imgview_feedback setContentMode:UIViewContentModeScaleAspectFit];
        [self.view addSubview:imgview_feedback];
        feedbackLabel = [[UILabel alloc]initWithFrame:
                      CGRectMake(125,150, 280, 80)];
        feedbackLabel.numberOfLines = 0;
        
        feedbackLabel.font = [UIFont fontWithName:@"Helvetica" size:14];
        feedbackLabel.textColor = [UIColor colorWithRed:0.302 green:0.569 blue:0.749 alpha:1];
        feedbackLabel.backgroundColor = [UIColor clearColor];
        feedbackLabel.text = @"FEEDBACK";
        [self.view addSubview:feedbackLabel];
        type=[[UILabel alloc]initWithFrame:CGRectMake(20, 170, 280, 30)];
         type.numberOfLines = 0;
           type.font = [UIFont fontWithName:@"Helvetica" size:14];
            type.textColor = [UIColor blackColor];
            type.backgroundColor = [UIColor clearColor];
          type.text = @"Feedback types ";
           [scrollView_feedback addSubview:type];
    //    ratingLabel= [[UILabel alloc]initWithFrame:
    //                   CGRectMake(50,140, 280, 80)];
    //    ratingLabel.numberOfLines = 0;
    //    ratingLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:12];
    //    ratingLabel.textColor = [UIColor blackColor];
    //    ratingLabel.backgroundColor = [UIColor clearColor];
    //    ratingLabel.text = @"Please rate your experience with this app";
    //    [scrollView_feedback addSubview:ratingLabel];
    //    

    //    btn1 = [UIButton buttonWithType: UIButtonTypeCustom];
    //    btn1.tag = 1;
    //    [btn1 setBackgroundImage:[UIImage imageNamed:
    //                              @"red.png"]
    //                    forState:UIControlStateNormal];
    //    [btn1 setBackgroundImage:[UIImage imageNamed:
    //                              @"green.png"]
    //                    forState:UIControlStateSelected];
    //    //    [btn1 addTarget:self
    //    //             action:@selector(buttonTapped:)
    //    //   forControlEvents:UIControlEventTouchUpInside];
    //    
    //    [self.controlGroup addControl:btn1];
    //    [buttonHolderArray addObject:btn1];
       // [btn1 setBackgroundColor: [UIColor lightGrayColor]];
    //    [btn1 setFrame:CGRectMake(20,200,30,30)];
    //    
    //    [scrollView_feedback addSubview:btn1];
    //    btn2 = [UIButton buttonWithType: UIButtonTypeCustom];
    //    btn2.tag =2;
    //    [btn2 setBackgroundImage:[UIImage imageNamed:
    //                              @"red.png"]
    //                    forState:UIControlStateNormal];
    //    [btn2 setBackgroundImage:[UIImage imageNamed:
    //                              @"green.png"]
    //                    forState:UIControlStateSelected];
        //    [btn2 addTarget:self
        //             action:@selector(buttonTapped:)
        //   forControlEvents:UIControlEventTouchUpInside];
        
        
    //    [buttonHolderArray addObject:btn2];
    //    [self.controlGroup addControl:btn2];
    //    //[btn2 setBackgroundColor: [UIColor lightGrayColor]];
    //    [btn2 setFrame:CGRectMake(75,200,30,30)];
    //    
    //    [scrollView_feedback addSubview:btn2];
    //    btn3 = [UIButton buttonWithType: UIButtonTypeCustom];
    //    btn3.tag =3;
    //    [btn3 setBackgroundImage:[UIImage imageNamed:
    //                              @"red.png"]
    //                    forState:UIControlStateNormal];
    //    [btn3 setBackgroundImage:[UIImage imageNamed:
    //                              @"green.png"]
    //                    forState:UIControlStateSelected];
        //    [btn3 addTarget:self
        //             action:@selector(buttonTapped:)
        //   forControlEvents:UIControlEventTouchUpInside];
        
        
        
    //    [buttonHolderArray addObject:btn3];
    //    [self.controlGroup addControl:btn3];
    //    //[btn3 setBackgroundColor: [UIColor lightGrayColor]];
    //    [btn3 setFrame:CGRectMake(135,200,30,30)];
    //    [scrollView_feedback addSubview:btn3];
    //    btn4 = [UIButton buttonWithType: UIButtonTypeCustom];
    //    btn4.tag =4;
    //    
    //    [btn4 setBackgroundImage:[UIImage imageNamed:
    //                              @"red.png"]
    //                    forState:UIControlStateNormal];
    //    [btn4 setBackgroundImage:[UIImage imageNamed:
    //                              @"green.png"]
    //                    forState:UIControlStateSelected];
        //    [btn4 addTarget:self
        //             action:@selector(buttonTapped:)
        //   forControlEvents:UIControlEventTouchUpInside];
        
        
        
    //    [buttonHolderArray addObject:btn4];
    //    [self.controlGroup addControl:btn4];
    //    //[btn4 setBackgroundColor: [UIColor lightGrayColor]];
    //    [btn4 setFrame:CGRectMake(195,200,30,30)];
    //    [scrollView_feedback addSubview:btn4];
    //    btn5 = [UIButton buttonWithType: UIButtonTypeCustom];
    //    btn5.tag =5;
    //    [btn5 setBackgroundImage:[UIImage imageNamed:
    //                              @"red.png"]
    //                    forState:UIControlStateNormal];
    //    [btn5 setBackgroundImage:[UIImage imageNamed:
    //                              @"green.png"]
    //                    forState:UIControlStateSelected];
        //[btn5 addTarget:self
        // action:@selector(buttonTapped:)
        //forControlEvents:UIControlEventTouchUpInside];
        
    //    
    //    [buttonHolderArray addObject:btn5];
    //    [self.controlGroup addControl:btn5];
    //    //[btn5 setBackgroundColor: [UIColor lightGrayColor]];
    //    [btn5 setFrame:CGRectMake(260,200,30,30)];
    //    [scrollView_feedback addSubview:btn5];
    //    NSLog(@"is %d",[buttonHolderArray count]);
    //    
        
        
        
        
        
        feedbacktype_txt =[[UITextField  alloc] initWithFrame:
                                  CGRectMake(20, 200, 280, 30)];
        feedbacktype_txt.borderStyle = UITextBorderStyleRoundedRect;
        feedbacktype_txt.placeholder=@"Product";
        feedbacktype_txt.contentVerticalAlignment =UIControlContentVerticalAlignmentCenter;
        [feedbacktype_txt setFont:[UIFont boldSystemFontOfSize:12]];
        //txt_comments.placeholder = @"User Name";
        
        feedbacktype_txt.delegate = self;
        feedbacktype_txt.autocorrectionType = UITextAutocorrectionTypeNo;
        feedbacktype_txt.returnKeyType = UIReturnKeyDone;
        feedbacktype_txt.layer.borderWidth = 0.5f;
        feedbacktype_txt.layer.borderColor = [[UIColor grayColor] CGColor];
        feedbacktype_txt.clearButtonMode = UITextFieldViewModeWhileEditing;
        [scrollView_feedback addSubview:feedbacktype_txt];
        pickerArray = [[NSArray alloc]initWithObjects:@"Service",@"Product",@"App",nil];
       type_picker = [[UIPickerView alloc]init];
        type_picker.dataSource = self;
        type_picker.delegate = self;
        [type_picker setBackgroundColor:[UIColor clearColor]];
        type_picker.showsSelectionIndicator = YES;
        type_picker.tintColor=[UIColor orangeColor];
        [self.feedbacktype_txt setInputView:type_picker];
    UIBarButtonItem *flexSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
        UIBarButtonItem *doneButton = [[UIBarButtonItem alloc]
                                       initWithTitle:@"Done" style:UIBarButtonItemStyleDone
                                       target:self action:@selector(done:)];
        doneButton.tintColor=[UIColor orangeColor];
        UIToolbar *toolBar = [[UIToolbar alloc]initWithFrame:
                              CGRectMake(0, self.view.frame.size.height-
                                         type_picker.frame.size.height-50, 320, 50)];
        [toolBar setBarStyle:UIBarStyleDefault];
        
        NSArray *toolbarItems = [NSArray arrayWithObjects:
                                 flexSpace,doneButton,nil];
        [toolBar setItems:toolbarItems];
        
        self.feedbacktype_txt.inputAccessoryView = toolBar;

        
        
        
        
        
        
        
        
        

        
        
        comm_lbl =[[UILabel alloc]initWithFrame:CGRectMake(20, 230, 280, 30)];
        comm_lbl.numberOfLines = 0;
        comm_lbl.font = [UIFont fontWithName:@"Helvetica" size:14];
        comm_lbl.textColor = [UIColor blackColor];
        comm_lbl.backgroundColor = [UIColor clearColor];
        comm_lbl.text = @"Comments ";
        [scrollView_feedback addSubview:comm_lbl];

        
        
        
        
        
        
        txt_comments=[[UITextView  alloc] initWithFrame:
                      CGRectMake(20, 260, 280, 60)];
            // txt_comments.borderStyle = UITextBorderStyleRoundedRect;
        // txt_comments.contentVerticalAlignment =UIControlContentVerticalAlignmentCenter;
        [txt_comments setFont:[UIFont boldSystemFontOfSize:12]];
        //txt_comments.placeholder = @"User Name";
        
        txt_comments.delegate = self;
        txt_comments.autocorrectionType = UITextAutocorrectionTypeNo;
        txt_comments.returnKeyType = UIReturnKeyNext;
        txt_comments.layer.borderWidth = 0.5f;
        txt_comments.layer.borderColor = [[UIColor grayColor] CGColor];
        //txt_comments.clearButtonMode = UITextFieldViewModeWhileEditing;
        [scrollView_feedback addSubview:txt_comments];
        email_lbl=[[UILabel alloc]initWithFrame:CGRectMake(20,320, 280, 30)];
        email_lbl.numberOfLines = 0;
        email_lbl.font = [UIFont fontWithName:@"Helvetica" size:14];
        email_lbl.textColor = [UIColor blackColor];
        email_lbl.backgroundColor = [UIColor clearColor];
        email_lbl.text = @"Enter your  email for us to get back to you";
        [scrollView_feedback addSubview:email_lbl];
        
        

        feedbackemail_textField =[[UITextField  alloc] initWithFrame:
                                CGRectMake(20, 350, 280, 30)];
        feedbackemail_textField.borderStyle = UITextBorderStyleRoundedRect;
        feedbackemail_textField.contentVerticalAlignment =UIControlContentVerticalAlignmentCenter;
        [feedbackemail_textField setFont:[UIFont boldSystemFontOfSize:12]];
        //txt_comments.placeholder = @"User Name";
        
        feedbackemail_textField.delegate = self;
       feedbackemail_textField.autocorrectionType = UITextAutocorrectionTypeNo;
        feedbackemail_textField.returnKeyType = UIReturnKeyDone;
        feedbackemail_textField.layer.borderWidth = 0.5f;
        feedbackemail_textField.layer.borderColor = [[UIColor grayColor] CGColor];
        feedbackemail_textField.clearButtonMode = UITextFieldViewModeWhileEditing;
        [scrollView_feedback addSubview:feedbackemail_textField];
        submitbtn = [UIButton buttonWithType: UIButtonTypeRoundedRect];
        submitbtn.layer.cornerRadius = 5;
        //submitbtn.layer.cornerRadius = 5;
        //agentloginbtn.layer.borderWidth = 1;
        [submitbtn setBackgroundColor: [UIColor colorWithRed:0.302 green:0.569 blue:0.749 alpha:1]];
        //[submitbtn setBackgroundColor: [UIColor colorWithRed:0.976 green:0.459 blue:0.016 alpha:1] ];
        [submitbtn setTitleColor:[UIColor whiteColor] forState:
         UIControlStateNormal];
        //sets background image for normal state
        //    [agentloginbtn setBackgroundImage:[UIImage imageNamed:
        //                                      @"Button_Default.png"]
        //                            forState:UIControlStateNormal];
        //sets background image for highlighted state
        //[agentloginbtn setBackgroundImage:[UIImage imageNamed:
        ///@"Button_Highlighted.png"]
        //forState:UIControlStateHighlighted];
        [submitbtn addTarget:self
                         action:@selector(agentloginbtn_Clicked)
                forControlEvents:UIControlEventTouchUpInside];
        [submitbtn setFrame:CGRectMake(20, 390, 280, 30)];
        [submitbtn setTitle:@"SUBMIT" forState:UIControlStateNormal];
        [scrollView_feedback addSubview:submitbtn];


    }


    - (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
        
        if([text isEqualToString:@"\n"]) {
            [textView resignFirstResponder];
            return NO;
        }
        
        return YES;
    }
    -(BOOL)textFieldShouldReturn:(UITextField *)textField
    {
        [feedbackemail_textField resignFirstResponder];
        return YES;
    }
    -(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
    }
    -(NSInteger)pickerView:(UIPickerView *)pickerView
    numberOfRowsInComponent:(NSInteger)component{
        return [pickerArray count];
    }

    #pragma mark- Picker View Delegate

    -(void)pickerView:(UIPickerView *)pickerView didSelectRow:
    (NSInteger)row inComponent:(NSInteger)component{
        [feedbacktype_txt setText:[pickerArray objectAtIndex:row]];
    }
    - (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:
    (NSInteger)row forComponent:(NSInteger)component{
        return [pickerArray objectAtIndex:row];
    }

    - (void)done:(id)sender {
        
        [type_picker removeFromSuperview];
        [self.feedbacktype_txt resignFirstResponder];
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
