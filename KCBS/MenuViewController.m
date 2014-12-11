//
//  MenuViewController.m
//  KCBS
//
//  Created by YK Software Solutions on 14/11/14.
//  Copyright (c) 2014 YK Software Solutions. All rights reserved.
//

//if(indexPath.row==1){
//    CustomerLoginVC *vc1 = [self.storyboard instantiateViewControllerWithIdentifier:@"CustomerLoginVC"];
//    //vc.labelText = [self.menu_array objectAtIndex:indexPath.row];
//    [self.navigationController pushViewController:vc1 animated:YES];
//    //vc1.recipeName = [menu_array objectAtIndex:indexPath.row];
//}
#import "MenuViewController.h"
//#import "DetailViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController
@synthesize menuarray;
@synthesize logoView;
@synthesize img_back;
@synthesize img_power;
@synthesize date_lbl;
@synthesize paintView;
@synthesize logo;
//@synthesize secondViewController;


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
    date_lbl=[[UILabel alloc]initWithFrame:CGRectMake(22,30,100,10)];
    date_lbl.font=[UIFont fontWithName:@"Helvetica" size:10];
    date_lbl.textColor = [UIColor blackColor];
    //date_lbl.backgroundColor = [UIColor redColor];
    date_lbl.text =result;
    paintView=[[UIView alloc]initWithFrame:CGRectMake(30,10,100,40)];
    //[paintView setBackgroundColor:[UIColor yellowColor]];
    self.parentViewController.navigationItem.titleView=paintView;
    logo=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"small.png"]];
    logo.frame=CGRectMake(29,0,44,29);
    [self.paintView addSubview:logo];
    [self.paintView addSubview:date_lbl];
    //self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]];
     //logoView = [[UIView alloc] initWithFrame:CGRectMake(0,0,4,4)];
   //UIColor *background = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"kcbsLogo.png"]];
    //logoView.backgroundColor=background;
      //[logoView setBackgroundImage:[UIImage imageNamed:@"kcbsLogo.png"] forState:UIControlStateNormal];
        [logoView setUserInteractionEnabled:NO];

   // self.navigationItem.titleView=logoView;
//    NSURLConnection *connection;
//    NSString *url = [NSString stringWithFormat:@"http://49.156.159.26:9085/etsAPI/api/getTicketsByEmail?email=srut649@@gmail.com"];
//    NSString *username = [@"rajesh" stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
//    NSString *password = [@"rajesh123" stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
//    NSMutableString* requestURL = [[NSMutableString alloc] initWithString:url];
//    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL: [NSURL URLWithString: [NSString stringWithString:requestURL]]];
//    [request setHTTPMethod: @"GET"];
//    [request setValue:@"application/json" forHTTPHeaderField:@"content-type"];
//    [request setHTTPBody:[[NSString stringWithFormat:@"username=%@&password=%@", username, password] dataUsingEncoding:NSUTF8StringEncoding]];
//    connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
//
    menuarray= @[@"AGENT LOGIN", @"CUSTOMER LOGIN", @"BRANCH LOCATOR",@"CONTACT US",@"FEEDBACK",@"PRODUCT INFO",@"SHARE IT WITH FRIENDS",@"TERMS AND CONDITIONS"];
    menuTableView =[[UITableView alloc] initWithFrame:CGRectMake(0,10,320,576) style:UITableViewStylePlain];
    [menuTableView setSeparatorStyle: UITableViewCellSeparatorStyleNone];
    menuTableView.dataSource = self;
    menuTableView.delegate = self;
    menuTableView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]];
    menuTableView.scrollEnabled = NO;
    [self.view addSubview:menuTableView];
    //set the title of the navigation view
    //[self.navigationItem setTitle:@"KCBS"];
 self.navigationItem.titleView =paintView;
    //[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"biglogo.png"]]
    UIBarButtonItem *left=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"backButton.png"]style:UIBarButtonItemStylePlain
        target:self
           action:nil];
    //left.customView=[UIImageView imageNamed:@"backButton.png"];
    img_back = [[UIImageView alloc]
                        initWithFrame:CGRectMake(12,8,20,20)];
    [img_back setImage:[UIImage imageNamed:@"backButton.png"]];
    left.customView=img_back;
   self.navigationItem.leftBarButtonItem = left;
    UIBarButtonItem *right=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"logoutIcon.png"]style:UIBarButtonItemStylePlain
                                                         target:self
                                                         action:nil];
    img_power= [[UIImageView alloc]
                initWithFrame:CGRectMake(12,8,20,20)];
    [img_power setImage:[UIImage imageNamed:@"logoutIcon.png"]];
    right.customView=img_power;
    self.navigationItem.rightBarButtonItem = right;
    
    self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
    
    //set the background color of the view
    [self.view setBackgroundColor:[UIColor whiteColor]];
    //[self.view setBackgroundColor:[UIColor colorWithRed:0.302 green:0.569 blue:0.749 alpha:1]];
    //    UIImage *navbtnimg=[UIImage imageNamed:@"img.png"];
    //    [navbtnimg drawInRect: CGRectMake(0, 0, 20, 20)];
    //    //create a right side button in the navigation bar
    //   //self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"img.png"]];
    //    UIBarButtonItem * item = [[UIBarButtonItem alloc] initWithCustomView:[[UIImageView alloc] initWithImage:navbtnimg]];
    //    item.style=UIBarButtonItemStylePlain;
    //    item.target=self;
    //    item.action=@selector(nextScreen:);
//    UIBarButtonItem *myButton = [[UIBarButtonItem alloc] initWithTitle:@"Next"
//                                                                 style:UIBarButtonItemStylePlain
//                                                                target:self
//                                                                action:@selector(nextScreen:)];
//    [self.navigationItem setRightBarButtonItem:myButton];
    
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
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    //    //return 4;
    return [menuarray count];
    //
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50.0;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
    }
//    if( [indexPath row] % 2)
//        [cell setBackgroundColor:[UIColor whiteColor]];
//    else
//        [cell setBackgroundColor:[UIColor purpleColor]];
    //[cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 10, 30, 30)];
    cell.imageView.image = imgView.image;
    cell.backgroundColor=[UIColor clearColor];
    cell.imageView.backgroundColor=[UIColor clearColor];
    cell.imageView.layer.cornerRadius = 5.0;
    cell.imageView.layer.borderColor = [[UIColor colorWithRed:(38/255.f) green:(171/255.f) blue:(226/255.f) alpha:1.0f] CGColor];
    cell.imageView.layer.borderWidth = 1;
    cell.imageView.layer.masksToBounds = YES;
    UILabel *lblCell=[[UILabel alloc]initWithFrame:CGRectMake(60, 15, 180, 20)];
    //lblCell.backgroundColor=[UIColor colorWithRed:0.302 green:0.569 blue:0.749 alpha:1];
    lblCell.font=[UIFont fontWithName:@"HelveticaNeue" size:14.0];
    
    lblCell.textColor=[UIColor blackColor];
    if (indexPath.row==0)
    {
        //        lblCell.text=@"Home";
        //        [cell.contentView addSubview:lblCell];
        //        //[cell.contentView addSubview:lblCellLine];
             imgView.image = [UIImage imageNamed:@"agentLoginsIcon.png"];
            //imgView.frame=CGRectMake(20, 8, 30, 30);
              [cell.contentView addSubview:imgView];
        //imgView.image = [UIImage imageNamed:@"img.png"];
        //imgView.frame=CGRectMake(20, 8, 30, 30);
        
        [cell.contentView addSubview:imgView];
        
        lblCell.text=@"AGENT LOGIN";
        [cell.contentView addSubview:lblCell];
        //[cell.contentView addSubview:lblCellLine];
        //imgView.image = [UIImage imageNamed:@"search_new.png"];
        //imgView.frame=CGRectMake(20-2, 12+2, 25, 25);
        //[cell.contentView addSubview:imgView];
        
        
    }
    else if (indexPath.row==1)
    {
        imgView.image = [UIImage imageNamed:@"custLoginsIcon.png"];
        //imgView.frame=CGRectMake(20, 8, 30, 30);
        
        [cell.contentView addSubview:imgView];
        lblCell.text=@"CUSTOMER LOGIN";
        [cell.contentView addSubview:lblCell];
        //[cell.contentView addSubview:lblCellLine];
        //imgView.image = [UIImage imageNamed:@"listicon_new.png"];
        //imgView.frame=CGRectMake(20-2, 12, 25, 25);
        //[cell.contentView addSubview:imgView];
        
        
        //        lblCell.text=@"Profile";
        //        [cell.contentView addSubview:lblCell];
        //        [cell.contentView addSubview:lblCellLine];
        //        //imgView.image = [UIImage imageNamed:@"profiles.png"];
        //        //imgView.image = [UIImage imageNamed:@"setting_new.png"];
        //        imgView.image = [UIImage imageNamed:@"smallProfile_new.png"];
        //        imgView.frame=CGRectMake(20, 14, 25, 25);
        //
        //        [cell.contentView addSubview:imgView];
    }
    else if (indexPath.row==2)
    {
        imgView.image = [UIImage imageNamed:@"brachLocatorsIcon.png"];
        //imgView.frame=CGRectMake(20, 8, 30, 30);
        
        [cell.contentView addSubview:imgView];
        lblCell.text=@"BRANCH LOCATOR";
        [cell.contentView addSubview:lblCell];
    }
    else if (indexPath.row==3)
    {
        imgView.image = [UIImage imageNamed:@"contactsIcon.png"];
        //imgView.frame=CGRectMake(20, 8, 30, 30);
        
        [cell.contentView addSubview:imgView];
        lblCell.text=@"CONTACT US";
        [cell.contentView addSubview:lblCell];
    }
    else if (indexPath.row==4)
    {
        imgView.image = [UIImage imageNamed:@"feedbacksIcon.png"];
        ///imgView.frame=CGRectMake(20, 8, 30, 30);
        
        [cell.contentView addSubview:imgView];
        lblCell.text=@"FEEDBACK";
        [cell.contentView addSubview:lblCell];
    }
    else if (indexPath.row==5)
    {
        imgView.image = [UIImage imageNamed:@"proInfosIcon.png"];
        ///imgView.frame=CGRectMake(20, 8, 30, 30);
        
        [cell.contentView addSubview:imgView];
        lblCell.text=@"PRODUCT INFO";
        [cell.contentView addSubview:lblCell];
    }
    else if (indexPath.row==6)
    {
        imgView.image = [UIImage imageNamed:@"sharesIcon.png"];
        ///imgView.frame=CGRectMake(20, 8, 30, 30);
        
        [cell.contentView addSubview:imgView];
        lblCell.text=@"SHARE IT WITH FRIENDS";
        [cell.contentView addSubview:lblCell];
    }
    else if (indexPath.row==7)
    {
        imgView.image = [UIImage imageNamed:@"termssIcon.png"];
        ///imgView.frame=CGRectMake(20, 8, 30, 30);
        
        [cell.contentView addSubview:imgView];
        lblCell.text=@"TERMS AND CONDITIONS";
        [cell.contentView addSubview:lblCell];
    }

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Alert" message:[NSString stringWithFormat:@"Selected Value is %@",[menuarray objectAtIndex:indexPath.row]] delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    //[alertView show];
    
    if (indexPath.row==0){
       // NSLog(@"first row");
        
AgentLogInViewController *agentloginViewController = [[ AgentLogInViewController alloc]init];
        [self.navigationController pushViewController:agentloginViewController animated:YES];
        agentloginViewController = nil;
    }
    if (indexPath.row==1){
        //NSLog(@"second row");
        
        CustomerLogInViewController  *customerloginViewController = [[ CustomerLogInViewController alloc]init];
        [self.navigationController pushViewController:customerloginViewController animated:YES];
        customerloginViewController = nil;
    }
    if (indexPath.row==2){
        //NSLog(@"third row");
        
        BranchLocatorViewController  *branchlocatorViewController = [[ BranchLocatorViewController alloc]init];
        [self.navigationController pushViewController:branchlocatorViewController animated:YES];
        branchlocatorViewController = nil;
    }
    if (indexPath.row==3){
       // NSLog(@"fourth row");
        
        ContactUsViewController  *contactusViewController = [[ ContactUsViewController alloc]init];
        [self.navigationController pushViewController:contactusViewController animated:YES];
        contactusViewController = nil;
    }
    if (indexPath.row==4){
        //NSLog(@"fifth row");
        
        FeedbackViewController  *feedbackViewController = [[ FeedbackViewController alloc]init];
        [self.navigationController pushViewController:feedbackViewController animated:YES];
        feedbackViewController = nil;
    }

}
- (void)viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    self.navigationController.toolbarHidden = YES;
    [super viewWillAppear:animated];
}

//- (void) nextScreen:(id)sender {
//
//    //get reference to the button that requested the action
//    UIBarButtonItem *myButton = (UIBarButtonItem *)sender;
//
//    //check which button it is, if you have more than one button on the screen
//    //you must check before taking necessary action
//    if([myButton.title isEqualToString:@"Next View"]){
//        NSLog(@"Clicked on the bar button");
//
//        //if the second view controller doesn't exists create it
//        if(self.secondViewController == nil){
//            SecondViewController *secondView = [[SecondViewController alloc] init];
//            self.secondViewController = secondView;
//            // [self.navigationController pushViewController:self.secondViewController animated:YES];
//        }
//
//
//        //tell the navigation controller to push a new view into the stack
//        [self.navigationController pushViewController:self.secondViewController animated:YES];
//
//    }
//
//}
///535353535353
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//
//    //	static NSString *cellIdentifier = @"MenuCell";
//    //
//    //	DrawerCustomCell *cell = (DrawerCustomCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
//    //	if (cell == nil)
//    //    {
//    //        cell = [[DrawerCustomCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
//    //    }
//
//    static NSString *CellIdentifier = @"Cell";
//
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
//
//    if (cell == nil) {
//
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
//
//    }
//
//
//
//    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 10, 30, 30)];
//    cell.imageView.image = imgView.image;
//    cell.imageView.backgroundColor=[UIColor clearColor];
//    cell.imageView.layer.cornerRadius = 10.0;
//    cell.imageView.layer.borderColor = [[UIColor colorWithRed:(38/255.f) green:(171/255.f) blue:(226/255.f) alpha:1.0f] CGColor];
//    cell.imageView.layer.borderWidth = 1;
//    cell.imageView.layer.masksToBounds = YES;
//
//
//    UILabel *lblCell=[[UILabel alloc]initWithFrame:CGRectMake(60, 15, 100, 20)];
//    // lblCell.textColor=colorBlue;
//    lblCell.font=[UIFont fontWithName:@"HelveticaNeue" size:16.0];
//    //lblCell.highlightedTextColor = colorBlue;
//    UILabel *lblCellLine=[[UILabel alloc]initWithFrame:CGRectMake(20, 49, 165, 0.5)];
//    lblCellLine.backgroundColor=[UIColor colorWithRed:(38/255.f) green:(171/255.f) blue:(226/255.f) alpha:1.0f];
//
//
//
//
//
//    if (indexPath.row==0)
//    {
//        //        lblCell.text=@"Home";
//        //        [cell.contentView addSubview:lblCell];
//        //        //[cell.contentView addSubview:lblCellLine];
//        //        imgView.image = [UIImage imageNamed:@"house.png"];
//        //        imgView.frame=CGRectMake(20, 8, 30, 30);
//        //        [cell.contentView addSubview:imgView];
//
//        lblCell.text=@"Search";
//        [cell.contentView addSubview:lblCell];
//        [cell.contentView addSubview:lblCellLine];
//        imgView.image = [UIImage imageNamed:@"search_new.png"];
//        imgView.frame=CGRectMake(20-2, 12+2, 25, 25);
//        [cell.contentView addSubview:imgView];
//
//
//    }
//    else if (indexPath.row==1)
//    {
//
//        lblCell.text=@"Favorites";
//        [cell.contentView addSubview:lblCell];
//        [cell.contentView addSubview:lblCellLine];
//        imgView.image = [UIImage imageNamed:@"listicon_new.png"];
//        imgView.frame=CGRectMake(20-2, 12, 25, 25);
//        [cell.contentView addSubview:imgView];
//
//
//        //        lblCell.text=@"Profile";
//        //        [cell.contentView addSubview:lblCell];
//        //        [cell.contentView addSubview:lblCellLine];
//        //        //imgView.image = [UIImage imageNamed:@"profiles.png"];
//        //        //imgView.image = [UIImage imageNamed:@"setting_new.png"];
//        //        imgView.image = [UIImage imageNamed:@"smallProfile_new.png"];
//        //        imgView.frame=CGRectMake(20, 14, 25, 25);
//        //
//        //        [cell.contentView addSubview:imgView];
//    }
//
//    else if (indexPath.row==2)
//    {
//        //        lblCell.text=@"My Jobs(2)";
//        //        [cell.contentView addSubview:lblCell];
//        //[cell.contentView addSubview:lblCellLine];
//        //        imgView.image = [UIImage imageNamed:@"jobs.jpg"];
//        //        //imgView.image = [UIImage imageNamed:@"listicon_new.png"];
//        //        imgView.frame=CGRectMake(20, 12, 25, 25);
//        //        [cell.contentView addSubview:imgView];
//
//        lblCell.text=@"Settings";
//        [cell.contentView addSubview:lblCell];
//        [cell.contentView addSubview:lblCellLine];
//        imgView.image = [UIImage imageNamed:@"setting_new.png"];
//        imgView.frame=CGRectMake(20-2, 12, 30, 30);
//        [cell.contentView addSubview:imgView];
//
//
//    }
//    else if (indexPath.row==3)
//    {
//
//        //        if (!appDelegate.usrname)
//        //        {
//        //            lblCell.text=@"Sign Out";
//        //            [cell.contentView addSubview:lblCell];
//        //        }
//        //        if (appDelegate.isLoginTrue)
//        //        {
//        //            lblCell.text=@"Sign Out";
//        //        }
//        //        else
//        //        {
//        //            lblCell.text=@"Sign Out";
//        //        }
//        //        //lblCell.text=@"Sign Out";
//        //        [cell.contentView addSubview:lblCell];
//        //         [cell.contentView addSubview:lblCellLine];
//        //        //imgView.image = [UIImage imageNamed:@"signin_.png"];
//        //        imgView.image = [UIImage imageNamed:@"signout_new.png"];
//        //        imgView.frame=CGRectMake(20, 12, 25, 25);
//        //        [cell.contentView addSubview:imgView];
//
//    }
//
//    else if (indexPath.row==4)
//    {
//
//        //        lblCell.text=@"Favorites";
//        //        [cell.contentView addSubview:lblCell];
//        //        [cell.contentView addSubview:lblCellLine];
//        //        imgView.image = [UIImage imageNamed:@"listicon_new.png"];
//        //        imgView.frame=CGRectMake(20-2, 12, 25, 25);
//        //        [cell.contentView addSubview:imgView];
//        //
//
//    }
//
//    else if (indexPath.row==5)
//    {
//
//
//    }
//
//
//    //    UILabel *lblArrow=[[UILabel alloc]initWithFrame:CGRectMake(200, 25, 10, 15)];
//    //    lblArrow.backgroundColor=[UIColor clearColor];
//    //    lblArrow.text=@">";
//    //    lblArrow.textColor=colorBlue;
//    //    [cell setAccessoryView:lblArrow];
//
//  	return cell;
//}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end