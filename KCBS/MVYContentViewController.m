


//
//  MVYContentViewController.m
//  MVYSideMenuExample
//
//  Created by saswati on 1/07/14.
//  Copyright (c) 2013 Mobivery. All rights reserved.
//
#define ToolBar_TintClor [UIColor colorWithRed:(0/255.f) green:(115/255.f) blue:(242/255.f) alpha:1.0f] //Blue color
#import "MVYContentViewController.h"
#import "MVYSideMenuController.h"

//login imports
#import "MVYContentViewController.h"

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>


@interface MVYContentViewController ()

@end

@implementation MVYContentViewController

//login code
@synthesize scrollView;
@synthesize txtFldUserID,txtFldPassWord;
@synthesize webData;
@synthesize imgBack;
@synthesize segment;
@synthesize appDelegate;


@synthesize imageView;
@synthesize strDeviceType;

@synthesize longitudeLabel;
@synthesize latitudeLabel;
@synthesize lbl;
@synthesize txtCordinates;
@synthesize txtLocation;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)viewWillAppear:(BOOL)animated
{
    self.view.backgroundColor=[UIColor purpleColor];
    
   // self.navigationItem.hidesBackButton = YES;
        [super viewWillAppear:animated];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
   // NSLog(@"the simulator height is %f",appDelegate.flViewHeight);
	//self.navigationItem.title = @"Job Portal";
    
    
    
    
#if TARGET_IPHONE_SIMULATOR
    
    NSLog(@"Running in Simulator");
    strDeviceType=@"Simulator";
    
#else
    
    NSLog(@"Running on the Device");
    strDeviceType=@"Device";
#endif
    
    
    
    NSDictionary *attributes = [NSDictionary dictionaryWithObjectsAndKeys:[UIFont
                                                                           fontWithName:@"HelveticaNeue-Light" size:20], NSFontAttributeName,
                                [UIColor colorWithRed:(202/255.f) green:(90/255.f) blue:(26/255.f) alpha:1.0f], NSForegroundColorAttributeName, nil];

    self.navigationController.navigationBar.titleTextAttributes = attributes;
    
     self.navigationItem.leftBarButtonItem.tintColor = [UIColor greenColor];
    self.view.backgroundColor=[UIColor whiteColor];

	[self addLeftMenuButtonWithImage:[UIImage imageNamed:@"backButton.png"]];
    
    longitudeLabel=[[UILabel alloc]init];
    latitudeLabel=[[UILabel alloc]init];
    [self designLoginScreen];
}

-(void)designLoginScreen
{
    UIImageView *backgroundImage = [[UIImageView alloc] initWithFrame:CGRectMake(10,75,300,480)];//iphone 5
    //UIImageView *backgroundImage = [[UIImageView alloc] initWithFrame:CGRectMake(10,75,300,395)];//iphone 4
    backgroundImage.image = [UIImage imageNamed:@"White_Image.jpg"];
    backgroundImage.backgroundColor=[UIColor clearColor];
    backgroundImage.userInteractionEnabled=YES;
    [backgroundImage.layer setBorderColor: [[UIColor grayColor] CGColor]];
    [backgroundImage.layer setBorderWidth: 1.0];
    [self.view addSubview:backgroundImage];
    [self.view sendSubviewToBack:backgroundImage];
 
    
    //scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 40+35, //self.view.bounds.size.width, self.view.bounds.size.height)];
    scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 40+35, self.view.bounds.size.width, self.view.bounds.size.height)];
    scrollView.backgroundColor = [UIColor clearColor];
    scrollView.scrollEnabled = YES;
    scrollView.pagingEnabled = YES;
    scrollView.showsVerticalScrollIndicator = YES;
    scrollView.showsHorizontalScrollIndicator = YES;
    //scrollView.contentSize = CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height+80+10);//iphone 4
    scrollView.contentSize = CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height+80+40);
    [self.view addSubview:scrollView];
    
    imageView= [[UIImageView alloc] initWithFrame:CGRectMake(10,0,300,150)];
    //imageView.image = [UIImage imageNamed:@"White_Image1.png"];
    imageView.backgroundColor=[UIColor clearColor];
    [imageView.layer setBorderColor: [[UIColor grayColor] CGColor]];
    [imageView.layer setBorderWidth: 1.0];
    imageView.userInteractionEnabled=YES;
    [scrollView addSubview:imageView];

    
    lbl=[[UILabel alloc]initWithFrame:CGRectMake( 110, 60, 140, 20)];
    lbl.text=@"Add Image";
    lbl.font=[UIFont fontWithName:@"HelveticaNeue-Light" size:15.0];
    lbl.textColor=[UIColor blackColor];
    lbl.hidden=NO;
    [imageView addSubview:lbl];
    
    
    //NSArray *itemArray = [NSArray arrayWithObjects: @"Take Photo", nil];
    
    
    
    
    
    
    

}

-(void)btnGallery_Clicked
{
    
}
-(void)btnSend_Clicked
{
    
}

-(void)btnSave_Clicked
{
    

}

-(void)MySegmentControlAction:(UIButton*)segment
{
    
    
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *title = [alertView buttonTitleAtIndex:buttonIndex];
    
    if([title isEqualToString:@"Select an Image"])
    {
        NSLog(@"Button 1 was selected.");
        UIImagePickerController *picker = [[UIImagePickerController alloc] init];
        picker.delegate = self;
        picker.allowsEditing = YES;
        picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        
        [self presentViewController:picker animated:YES completion:NULL];
        
        
    }
}

#pragma mark - Image Picker Controller delegate methods

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    
   }


- (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo
{
    UIAlertView *alert;
    
    // Unable to save the image
    if (error)
        alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                           message:@"Unable to save image to Photo Album."
                                          delegate:self cancelButtonTitle:@"Ok"
                                 otherButtonTitles:nil];
    else // All is well
        alert = [[UIAlertView alloc] initWithTitle:@"Success"
                                           message:@"Image saved to Photo Album."
                                          delegate:self cancelButtonTitle:@"Ok"
                                 otherButtonTitles:nil];
    
}


- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
}

#pragma mark -
#pragma mark -Location Functions
#pragma mark -


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)openMenu:(id)sender {
	
	MVYSideMenuController *sideMenuController = [self sideMenuController];
	if (sideMenuController) {
		[sideMenuController openMenu];
	}
}

@end
