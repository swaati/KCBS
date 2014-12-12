//
//  MVYMenuViewController.m
//  MVYSideMenuExample
//
//  Created by saswati rout.
//  Copyright (c) 2013 Mobivery. All rights reserved.
//

#import "MVYMenuViewController.h"
#import "MVYSideMenuController.h"
#import "MVYContentViewController.h"
@interface MVYMenuViewController ()

@property (nonatomic, weak) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray *menuItems;

@end

@implementation MVYMenuViewController
//@synthesize appDelegate;
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
    //appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];

    [super viewDidLoad];
    self.view.backgroundColor=[UIColor yellowColor];
    
    UIImageView *backgroundImage = [[UIImageView alloc] initWithFrame:CGRectMake(5,0,300,500)];
    backgroundImage.image = [UIImage imageNamed:@"bg.png"];
   backgroundImage.backgroundColor=[UIColor clearColor];
    backgroundImage.userInteractionEnabled=YES;
    [backgroundImage.layer setBorderColor: [[UIColor grayColor] CGColor]];
   [backgroundImage.layer setBorderWidth: 1.0];
    [self.view addSubview:backgroundImage];
    [self.view sendSubviewToBack:backgroundImage];
    

    self.view.backgroundColor=[UIColor colorWithRed:(242/255.f) green:(242/255.f) blue:(242/255.f) alpha:1.0f];
    //self.view.backgroundColor=[UIColor colorWithRed:(38/255.f) green:(171/255.f) blue:(226/255.f) alpha:1.0f];
    
    //little gray color
    //self.view.backgroundColor=[UIColor colorWithRed:(228/255.f) green:(233/255.f) blue:(236/255.f) alpha:1.0f];
    
    
    // Do any additional setup after loading the view from its nib.
	[self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"MenuCell"];
    self.tableView.frame=CGRectMake(5, 20-20, 310, 400);
    self.tableView.backgroundColor=[UIColor redColor];
    self.tableView.scrollEnabled=NO;
	self.menuItems = @[@"Menu Item 1", @"Menu Item 2", @"Menu Item 3", @"Menu Item 4",@"Menu Item 5"];
    
    [self.tableView setSeparatorStyle: UITableViewCellSeparatorStyleNone];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark – UITableViewDataSource
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //[cell addSubview:[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"separator1.png"]]];
    
    //UIImage *pattern = [UIImage imageNamed:@"blue_cell.png"];
    
   // UIImage *pattern = [UIImage imageNamed:@"gray_cell.png"];
    //[cell setBackgroundColor:[UIColor colorWithPatternImage:pattern]];
    
    [cell setBackgroundColor:[UIColor colorWithRed:(242/255.f) green:(242/255.f) blue:(242/255.f) alpha:1.0f]];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    return 50;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	
	return self.menuItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
//	static NSString *cellIdentifier = @"MenuCell";
//	UITableViewCell *cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
//	///DrawerCustomCell *cell = (DrawerCustomCell *)[[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
//	if (cell == nil)
//    {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
//   }
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
    }



    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 10, 30, 30)];
    cell.imageView.image = imgView.image;
    cell.imageView.backgroundColor=[UIColor clearColor];
    cell.imageView.layer.cornerRadius = 10.0;
    cell.imageView.layer.borderColor = [[UIColor colorWithRed:(38/255.f) green:(171/255.f) blue:(226/255.f) alpha:1.0f] CGColor];
    cell.imageView.layer.borderWidth = 1;
    cell.imageView.layer.masksToBounds = YES;

    
    
    
    
    if (indexPath.row==0)
    {

   
    }
    else if (indexPath.row==1)
    {
        
           }
    
    else if (indexPath.row==2)
    {


    }
    else if (indexPath.row==3)
    {
        
//        if (!appDelegate.usrname)
//        {
//            lblCell.text=@"Sign Out";
//            [cell.contentView addSubview:lblCell];
//        }
//        if (appDelegate.isLoginTrue)
//        {
//            lblCell.text=@"Sign Out";
//        }
//        else
//        {
//            lblCell.text=@"Sign Out";
//        }
//        //lblCell.text=@"Sign Out";
//        [cell.contentView addSubview:lblCell];
//         [cell.contentView addSubview:lblCellLine];
//        //imgView.image = [UIImage imageNamed:@"signin_.png"];
//        imgView.image = [UIImage imageNamed:@"signout_new.png"];
//        imgView.frame=CGRectMake(20, 12, 25, 25);
//        [cell.contentView addSubview:imgView];

    }
    
    else if (indexPath.row==4)
    {
        
//        lblCell.text=@"Favorites";
//        [cell.contentView addSubview:lblCell];
//        [cell.contentView addSubview:lblCellLine];
//        imgView.image = [UIImage imageNamed:@"listicon_new.png"];
//        imgView.frame=CGRectMake(20-2, 12, 25, 25);
//        [cell.contentView addSubview:imgView];
//

    }
    
    else if (indexPath.row==5)
    {
        
        
    }
    
    
//    UILabel *lblArrow=[[UILabel alloc]initWithFrame:CGRectMake(200, 25, 10, 15)];
//    lblArrow.backgroundColor=[UIColor clearColor];
//    lblArrow.text=@">";
//    lblArrow.textColor=colorBlue;
//    [cell setAccessoryView:lblArrow];
    
  	return cell;
}

#pragma mark –
#pragma mark – UITableViewDelegate
#pragma mark –


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	
	//MVYContentViewController *contentVC = [[MVYContentViewController alloc] initWithNibName:@"MVYContentViewController" bundle:nil];
    [tableView deselectRowAtIndexPath:indexPath animated:NO];

    UINavigationController *navigationController;
    
    if (indexPath.row==0)
    {
       
        MVYContentViewController *contentVC = [[MVYContentViewController alloc] init];
        navigationController = [[UINavigationController alloc] initWithRootViewController:contentVC];
        
        [[self sideMenuController] changeContentViewController:navigationController closeMenu:YES];
        
  }
    
    if (indexPath.row==1)
    {
//       AboutUsScreen*contentVC = [[AboutUsScreen alloc] init];
//        navigationController = [[UINavigationController alloc] initWithRootViewController:contentVC];
        
//        ContactListScreen*contentVC = [[ContactListScreen alloc] init];
//        navigationController = [[UINavigationController alloc] initWithRootViewController:contentVC];
//        
//        [[self sideMenuController] changeContentViewController:navigationController closeMenu:YES];
//
        
    }
    if (indexPath.row==2)
    {
           }
    if (indexPath.row==3)
    {
        
        MVYContentViewController *contentVC = [[MVYContentViewController alloc] initWithNibName:@"MVYContentViewController" bundle:nil];
        navigationController = [[UINavigationController alloc] initWithRootViewController:contentVC];
        
        [[self sideMenuController] changeContentViewController:navigationController closeMenu:YES];

        
    }
    
    if (indexPath.row==4)
    {
        
    }

    
}



@end
