//
//  MVYContentViewController.h
//  MVYSideMenuExample
//
//  Created by Álvaro Murillo del Puerto on 10/07/13.
//  Copyright (c) 2013 Mobivery. All rights reserved.
//

#import <UIKit/UIKit.h>
//login
#import "AppDelegate.h"
#import "CustomerProfileVC.h"
//#import <CoreLocation/CoreLocation.h>
@interface MVYContentViewController : UIViewController<UIScrollViewDelegate, UITextFieldDelegate,NSURLConnectionDelegate,UIAlertViewDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate>
//login
@property(nonatomic,strong) UIScrollView *scrollView;
@property(nonatomic,strong)UITextField *txtFldUserID;
@property(nonatomic,strong)UITextField *txtFldPassWord;

@property(nonatomic,strong) NSMutableData *webData;
@property(nonatomic,strong) UIView *imgBack;
@property(nonatomic,strong) UISegmentedControl *segment;
@property(nonatomic, strong)AppDelegate *appDelegate;


@property (strong, nonatomic) UIImageView *imageView;
@property(nonatomic,strong)NSString *strDeviceType;
@property(nonatomic,strong)UILabel *longitudeLabel;
@property(nonatomic,strong)UILabel *latitudeLabel;
@property(nonatomic,strong)UITextField *txtCordinates;
@property(nonatomic,strong)UILabel *lbl;
@property(nonatomic,strong)UITextField *txtLocation;


- (void) alertStatus:(NSString *)msg :(NSString *)title;

- (IBAction)openMenu:(id)sender;

@end
