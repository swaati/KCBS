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
    menuarray= @[@"AGENT LOGIN", @"CUSTOMER LOGIN", @"BRANCH LOCATOR",@"CONTACT US",@"FEEDBACK"];
    menuTableView =[[UITableView alloc] initWithFrame:CGRectMake(0,0,320,480) style:UITableViewStylePlain];
    [menuTableView setSeparatorStyle: UITableViewCellSeparatorStyleNone];
    menuTableView.dataSource = self;
    menuTableView.delegate = self;
    menuTableView.scrollEnabled = NO;
    [self.view addSubview:menuTableView];
    //set the title of the navigation view
    //[self.navigationItem setTitle:@"KCBS"];
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"small.png"]];

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
    UIBarButtonItem *myButton = [[UIBarButtonItem alloc] initWithTitle:@"Next"
                                                                 style:UIBarButtonItemStylePlain
                                                                target:self
                                                                action:@selector(nextScreen:)];
    [self.navigationItem setRightBarButtonItem:myButton];
    
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
    return 72.0;
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
    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 10, 30, 30)];
    cell.imageView.image = imgView.image;
    cell.imageView.backgroundColor=[UIColor clearColor];
    cell.imageView.layer.cornerRadius = 5.0;
    cell.imageView.layer.borderColor = [[UIColor colorWithRed:(38/255.f) green:(171/255.f) blue:(226/255.f) alpha:1.0f] CGColor];
    cell.imageView.layer.borderWidth = 1;
    cell.imageView.layer.masksToBounds = YES;
    UILabel *lblCell=[[UILabel alloc]initWithFrame:CGRectMake(60, 15, 150, 20)];
    //lblCell.backgroundColor=[UIColor colorWithRed:0.302 green:0.569 blue:0.749 alpha:1];
    lblCell.font=[UIFont fontWithName:@"HelveticaNeue" size:16.0];
    
    lblCell.textColor=[UIColor blackColor];
    if (indexPath.row==0)
    {
        //        lblCell.text=@"Home";
        //        [cell.contentView addSubview:lblCell];
        //        //[cell.contentView addSubview:lblCellLine];
        //        imgView.image = [UIImage imageNamed:@"house.png"];
        //        imgView.frame=CGRectMake(20, 8, 30, 30);
        //        [cell.contentView addSubview:imgView];
        imgView.image = [UIImage imageNamed:@"img.png"];
        imgView.frame=CGRectMake(20, 8, 30, 30);
        
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
        imgView.image = [UIImage imageNamed:@"img.png"];
        imgView.frame=CGRectMake(20, 8, 30, 30);
        
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
        imgView.image = [UIImage imageNamed:@"img.png"];
        imgView.frame=CGRectMake(20, 8, 30, 30);
        
        [cell.contentView addSubview:imgView];
        lblCell.text=@"BRANCH LOCATOR";
        [cell.contentView addSubview:lblCell];
    }
    else if (indexPath.row==3)
    {
        imgView.image = [UIImage imageNamed:@"img.png"];
        imgView.frame=CGRectMake(20, 8, 30, 30);
        
        [cell.contentView addSubview:imgView];
        lblCell.text=@"CONTACT US";
        [cell.contentView addSubview:lblCell];
    }
    else if (indexPath.row==4)
    {
        imgView.image = [UIImage imageNamed:@"img.png"];
        imgView.frame=CGRectMake(20, 8, 30, 30);
        
        [cell.contentView addSubview:imgView];
        lblCell.text=@"FEEDBACK";
        [cell.contentView addSubview:lblCell];
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Alert" message:[NSString stringWithFormat:@"Selected Value is %@",[menuarray objectAtIndex:indexPath.row]] delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [alertView show];
    
    if (indexPath.row==0){
        NSLog(@"first row");
        
AgentLogInViewController *agentloginViewController = [[ AgentLogInViewController alloc]init];
        [self.navigationController pushViewController:agentloginViewController animated:YES];
        agentloginViewController = nil;
    }
    if (indexPath.row==1){
        NSLog(@"second row");
        
        CustomerLogInViewController  *customerloginViewController = [[ CustomerLogInViewController alloc]init];
        [self.navigationController pushViewController:customerloginViewController animated:YES];
        customerloginViewController = nil;
    }
    if (indexPath.row==2){
        NSLog(@"third row");
        
        BranchLocatorViewController  *branchlocatorViewController = [[ BranchLocatorViewController alloc]init];
        [self.navigationController pushViewController:branchlocatorViewController animated:YES];
        branchlocatorViewController = nil;
    }
    if (indexPath.row==3){
        NSLog(@"fourth row");
        
        ContactUsViewController  *contactusViewController = [[ ContactUsViewController alloc]init];
        [self.navigationController pushViewController:contactusViewController animated:YES];
        contactusViewController = nil;
    }
    if (indexPath.row==4){
        NSLog(@"fifth row");
        
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