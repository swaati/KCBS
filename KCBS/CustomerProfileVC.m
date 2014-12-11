//
//  CustomerProfileVC.m
//  KCBS
//
//  Created by YK Software Solutions on 05/12/14.
//  Copyright (c) 2014 YK Software Solutions. All rights reserved.
//

#import "CustomerProfileVC.h"

@interface CustomerProfileVC ()

@end

@implementation CustomerProfileVC
@synthesize customerdetails_tv;
@synthesize customerdetails_array;
@synthesize customer_view;
@synthesize name_lbl;
@synthesize imgview_custompro;
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
     self.parentViewController.navigationItem.titleView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"small.png"]];
    customer_view=[[UIView alloc]initWithFrame:CGRectMake(0,65, 320,65)];
    customer_view.backgroundColor=[UIColor colorWithRed:0.965 green:0.506 blue:0.129 alpha:1];;
    [self.view addSubview:customer_view];
    name_lbl= [[UILabel alloc]initWithFrame:CGRectMake(100,20,100,20)];
    name_lbl.font=[UIFont fontWithName:@"Helvetica-Bold" size:16];
    name_lbl.textColor = [UIColor whiteColor];
    name_lbl.backgroundColor = [UIColor clearColor];
    name_lbl.text = @"Swati Rout";
    [customer_view addSubview:name_lbl];
    imgview_custompro = [[UIImageView alloc]
                        initWithFrame:CGRectMake(12,15,40,40)];
    [imgview_custompro setImage:[UIImage imageNamed:@"agentprofileSIcon.png"]];
    [imgview_custompro setContentMode:UIViewContentModeScaleAspectFit];
    [customer_view addSubview:imgview_custompro];

    customerdetails_array= @[@"0", @"1", @"2",@"3",@"4"];
    customerdetails_tv =[[UITableView alloc] initWithFrame:CGRectMake(0,131,320,480) style:UITableViewStylePlain];
    [customerdetails_tv setSeparatorStyle: UITableViewCellSeparatorStyleSingleLine];
    customerdetails_tv.dataSource = self;
    customerdetails_tv.delegate = self;
    customerdetails_tv.scrollEnabled = YES;
    [self.view addSubview:customerdetails_tv];

    // Do any additional setup after loading the view.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 8;
}
//-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    CGFloat height = 0.0;
//    
//    if (indexPath.row == 4)
//    {
//        NSString *text = self.address_lbl.text;
//        height = [text sizeWithFont:[UIFont systemFontOfSize:10] constrainedToSize:CGSizeMake(240,300) lineBreakMode:NSLineBreakByWordWrapping].height;
//    }
//    
//    return height + 44;
//}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
    if( [indexPath row] % 2){
        [cell setBackgroundColor:[UIColor colorWithRed:0.325 green:0.816 blue:1 alpha:1]];
    }
    else{
        [cell setBackgroundColor:[UIColor colorWithRed:0.455 green:0.851 blue:0.996 alpha:1]];
    }
        if (indexPath.row==0)
        {
            UILabel *lblCell=[[UILabel alloc]initWithFrame:
                         CGRectMake(20,10, 280,20)];
            lblCell.numberOfLines = 0;
            
          lblCell.font=[UIFont fontWithName:@"HelveticaNeue" size:13.0];
            lblCell.textColor = [UIColor blackColor];
            //lblCell.backgroundColor = [UIColor purpleColor];
           

            lblCell.text=@"Name:                               T.BALABRAHMAM";
            //cell.contentView.backgroundColor=[UIColor yellowColor];
           [cell.contentView addSubview:lblCell];
            //        //        //[cell.contentView addSubview:lblCellLine];
            //        //        imgView.image = [UIImage imageNamed:@"house.png"];
            //        //        imgView.frame=CGRectMake(20, 8, 30, 30);
            //        //        [cell.contentView addSubview:imgView];
            //        imgView.image = [UIImage imageNamed:@"img.png"];
            //        imgView.frame=CGRectMake(20, 8, 30, 30);
            //
            //        [cell.contentView addSubview:imgView];
            //
            //        lblCell.text=@"AGENT LOGIN";
            //        [cell.contentView addSubview:lblCell];
            //        //[cell.contentView addSubview:lblCellLine];
            //        //imgView.image = [UIImage imageNamed:@"search_new.png"];
            //        //imgView.frame=CGRectMake(20-2, 12+2, 25, 25);
            //        //[cell.contentView addSubview:imgView];
            //
            //
        }
        if(indexPath.row==1){
            UILabel *lblCell=[[UILabel alloc]initWithFrame:
                              CGRectMake(20,10, 280,20)];
            lblCell.numberOfLines = 0;
            
            lblCell.font=[UIFont fontWithName:@"HelveticaNeue" size:12.0];
            
            UILabel *father_namelbl=[[UILabel alloc]initWithFrame:CGRectMake(20,10,280,20)];
            father_namelbl.numberOfLines = 0;
            father_namelbl.font = [UIFont fontWithName:@"Helvetica" size:15];
            father_namelbl.textColor = [UIColor blackColor];
            father_namelbl.text=@"Father/Husband Name:SURACHARULU";
            [cell.contentView addSubview:father_namelbl];
        }
        if(indexPath.row==2){
            UILabel *lblCell=[[UILabel alloc]initWithFrame:
                              CGRectMake(20,10, 280,20)];
            lblCell.numberOfLines = 0;
            
            lblCell.font=[UIFont fontWithName:@"HelveticaNeue" size:12.0];
            UILabel *income_lbl=[[UILabel alloc]initWithFrame:CGRectMake(20,10,280,20)];
            income_lbl.numberOfLines = 0;
            income_lbl.font = [UIFont fontWithName:@"Helvetica" size:15];
            income_lbl.textColor = [UIColor blackColor];
            income_lbl.text=@"Annual Income:             Rs 255000";
            [cell.contentView addSubview:income_lbl];
        }
        if(indexPath.row==3){
            UILabel *lblCell=[[UILabel alloc]initWithFrame:
                              CGRectMake(20,10, 280,20)];
            lblCell.numberOfLines = 0;
            
            lblCell.font=[UIFont fontWithName:@"HelveticaNeue" size:12.0];
            UILabel *number_lbl=[[UILabel alloc]initWithFrame:CGRectMake(20,10,280,20)];
            number_lbl.numberOfLines = 0;
            number_lbl.font = [UIFont fontWithName:@"Helvetica" size:15];
           number_lbl.textColor = [UIColor blackColor];
            number_lbl.text=@"Contact Number:           +9123333354654";
            [cell.contentView addSubview:number_lbl];
        }
//        if(indexPath.row==4){
//            UILabel *address_lbl=[[UILabel alloc]initWithFrame:CGRectMake(0,10,200,20)];
//            address_lbl.numberOfLines = 0;
//            address_lbl.font = [UIFont fontWithName:@"Helvetica" size:15];
//           address_lbl.textColor = [UIColor blackColor];
//            address_lbl.text=@"Contact Number:bdfhbjdrfnjdrkngvkdfngvklmjdflkgmkgvfn v,mcnx,vweewrwerkeowrkfewmfkdmfkdvkcnvncdnvfivdcvcvcvncnm kmkmlmkmkdsfdfdfdmkcmkxm kmvcvcxvcxvcxvcvcvcvcvcvc";
//            [cell.contentView addSubview:address_lbl];
//        }
        if(indexPath.row==4){
            UILabel *lblCell=[[UILabel alloc]initWithFrame:
                              CGRectMake(20,10, 280,20)];
            lblCell.numberOfLines = 0;
            
            lblCell.font=[UIFont fontWithName:@"HelveticaNeue" size:12.0];
            UILabel *status_lbl=[[UILabel alloc]initWithFrame:CGRectMake(20,10,280,20)];
            status_lbl.numberOfLines = 0;
            status_lbl.font = [UIFont fontWithName:@"Helvetica" size:15];
            status_lbl.textColor = [UIColor blackColor];
            status_lbl.text=@"Status:                            RETIFIED";
            [cell.contentView addSubview:status_lbl];
        }




        
    }

        return cell;
}

    //[cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    //    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 10, 30, 30)];
    //    cell.imageView.image = imgView.image;
    //    cell.imageView.backgroundColor=[UIColor clearColor];
    //    cell.imageView.layer.cornerRadius = 5.0;
    //    cell.imageView.layer.borderColor = [[UIColor colorWithRed:(38/255.f) green:(171/255.f) blue:(226/255.f) alpha:1.0f] CGColor];
    //    cell.imageView.layer.borderWidth = 1;
    //    cell.imageView.layer.masksToBounds = YES;
    //UILabel *lblCell=[[UILabel alloc]initWithFrame:CGRectMake(60, 10, 200, 20)];
    //lblCell.backgroundColor=[UIColor colorWithRed:0.302 green:0.569 blue:0.749 alpha:1];
    //lblCell.font=[UIFont fontWithName:@"HelveticaNeue" size:16.0];
    //
    //lblCell.textColor=[UIColor blackColor];
    

    //    else if (indexPath.row==1)
    //    {
    //        imgView.image = [UIImage imageNamed:@"img.png"];
    //        imgView.frame=CGRectMake(20, 8, 30, 30);
    //
    //        [cell.contentView addSubview:imgView];
    //        lblCell.text=@"CUSTOMER LOGIN";
    //        [cell.contentView addSubview:lblCell];
    //        //[cell.contentView addSubview:lblCellLine];
    //        //imgView.image = [UIImage imageNamed:@"listicon_new.png"];
    //        //imgView.frame=CGRectMake(20-2, 12, 25, 25);
    //        //[cell.contentView addSubview:imgView];
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
    //    else if (indexPath.row==2)
    //    {
    //        imgView.image = [UIImage imageNamed:@"img.png"];
    //        imgView.frame=CGRectMake(20, 8, 30, 30);
    //
    //        [cell.contentView addSubview:imgView];
    //        lblCell.text=@"BRANCH LOCATOR";
    //        [cell.contentView addSubview:lblCell];
    //    }
    //    else if (indexPath.row==3)
    //    {
    //        imgView.image = [UIImage imageNamed:@"img.png"];
    //        imgView.frame=CGRectMake(20, 8, 30, 30);
    //
    //        [cell.contentView addSubview:imgView];
    //        lblCell.text=@"CONTACT US";
    //        [cell.contentView addSubview:lblCell];
    //    }
    //    else if (indexPath.row==4)
    //    {
    //        imgView.image = [UIImage imageNamed:@"img.png"];
    //        imgView.frame=CGRectMake(20, 8, 30, 30);
    //        
    //        [cell.contentView addSubview:imgView];
    //        lblCell.text=@"FEEDBACK";
    //        [cell.contentView addSubview:lblCell];
    //    }

//}
//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
//{
//    return 60;
//}

#pragma mark - UITableViewDelegate Methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
//    
//    [tableView reloadData];
//    JobDetail *controller = [[JobDetail alloc] initWithNibName:@"JobDetail" bundle:nil];
//    JobObjectClass *objJob=(JobObjectClass*)[arrFavoriteList objectAtIndex:indexPath.row];;
//    controller.objDetailJob=objJob;
//    NSLog(@"selected index%d",indexPath.row);
//    appDelegate.isFromSearchListView=NO;
//    CATransition* transition = [CATransition animation];
//    transition.duration = 0.3;
//    transition.type = kCATransitionFromRight;
//    transition.subtype = kCATransitionFromTop;
//    
//    [self.navigationController.view.layer addAnimation:transition forKey:kCATransition];
//    [self.navigationController pushViewController:controller animated:NO];
//    
    
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

