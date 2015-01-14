    //
    //  DefaulterLoansVC.m
    //  KCBS
    //
    //  Created by YK Software Solutions on 24/11/14.
    //  Copyright (c) 2014 YK Software Solutions. All rights reserved.
    //

    #import "DefaulterLoansVC.h"

    @interface DefaulterLoansVC ()

    @end

    @implementation DefaulterLoansVC
    @synthesize loan_view;
    @synthesize loan_lbl;
    @synthesize defaulterloans_tv;
    @synthesize dataForSection0;
    @synthesize dataForSection2;
    @synthesize demoData;
    @synthesize selectedValueIndex;
    @synthesize isShowingList;

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
       // self.title=@"DefaulterLoansVC";
        self.parentViewController.navigationItem.titleView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"small.png"]];
        
        
        
        
        


       //self.navigationController.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"small.png"]];
         //self.view.backgroundColor=[UIColor orangeColor];
        loan_view=[[UIView alloc]initWithFrame:CGRectMake(0,65, 320,65)];
        loan_view.backgroundColor=[UIColor colorWithRed:0.976 green:0.459 blue:0.016 alpha:1];
        [self.view addSubview:loan_view];
        loan_lbl= [[UILabel alloc]initWithFrame:CGRectMake(100,20,130,20)];
        loan_lbl.font=[UIFont fontWithName:@"Helvetica-Bold" size:14];
        loan_lbl.textColor = [UIColor whiteColor];
        loan_lbl.backgroundColor = [UIColor clearColor];
        loan_lbl.text = @"Defaulter Loans";
        [loan_view addSubview:loan_lbl];
        defaulterloans_tv =[[UITableView alloc] initWithFrame:CGRectMake(0,140,320,400) style:UITableViewStylePlain];
        [defaulterloans_tv setSeparatorStyle: UITableViewCellSeparatorStyleNone];
        defaulterloans_tv.dataSource = self;
        defaulterloans_tv.delegate = self;
            [self.view addSubview:defaulterloans_tv];
        // Do any additional setup after loading the view.
        dataForSection0 = @"This is some cell content.";
        dataForSection2 = @"This is another cell content.";
         demoData = [[NSMutableArray alloc] init];
        [demoData addObject:@"One"];
        [demoData addObject:@"Two"];
        //[demoData addObject:@"Three"];
        //[demoData addObject:@"Four"];
        //[demoData addObject:@"Five"];
        isShowingList = NO;
        selectedValueIndex = 0;
        
    }
    - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
        return 3;
        //return 1;
        
    }
    - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
        if (section == 0 || section == 2) {
            return 1;
        }
        else{
            if (!isShowingList) {
                return 1;
            }
            else{
                return [demoData count];
            }
        }

        
       // return 50;
        //return [agentdetails_array count];
        //
    }
    - (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
        if (section == 0) {
            return @"My first section";
        }
        else if (section == 1){
            return @"My demo section";
        }
        else{
            return @"Another section";
        }
    }
    - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
        return 32.0;
    }
    - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
        static NSString *CellIdentifier = @"Cell";
        
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        
        if (cell == nil) {
            
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
            
        }
        if( [indexPath row] % 2){
            [cell setBackgroundColor:[UIColor colorWithRed:0.325 green:0.816 blue:1 alpha:1]];
        }
        else{
            [cell setBackgroundColor:[UIColor colorWithRed:0.459 green:0.851 blue:1 alpha:1]];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleBlue;
        cell.accessoryType = UITableViewCellAccessoryNone;
        
        // Let's set another font for the cells.
        [[cell textLabel] setFont:[UIFont fontWithName:@"Marker Felt" size:16.0]];

        //[cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
        //    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 10, 30, 30)];
        //    cell.imageView.image = imgView.image;
        //    cell.imageView.backgroundColor=[UIColor clearColor];
        //    cell.imageView.layer.cornerRadius = 5.0;
        //    cell.imageView.layer.borderColor = [[UIColor colorWithRed:(38/255.f) green:(171/255.f) blue:(226/255.f) alpha:1.0f] CGColor];
        //    cell.imageView.layer.borderWidth = 1;
        //    cell.imageView.layer.masksToBounds = YES;
        //    UILabel *lblCell=[[UILabel alloc]initWithFrame:CGRectMake(60, 15, 150, 20)];
        //    //lblCell.backgroundColor=[UIColor colorWithRed:0.302 green:0.569 blue:0.749 alpha:1];
        //    lblCell.font=[UIFont fontWithName:@"HelveticaNeue" size:16.0];
        //
        //    lblCell.textColor=[UIColor blackColor];
        //    if (indexPath.row==0)
        //    {
        //        //        lblCell.text=@"Home";
        //        //        [cell.contentView addSubview:lblCell];
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
        //    }
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
        if ([indexPath section] == 0) {
            // We'll set the dataForSection0 string value to the cell of that section.
            [[cell textLabel] setText:dataForSection0];
        }
        else if ([indexPath section] == 2){
            // We'll set the dataForSection2 string value to the cell of that section.
            [[cell textLabel] setText:dataForSection2];
        }
        else{
            // Depending on the isShowingList variable value, we'll display either
            // the selected value of the demoData array only, or the whole array's
            // contents.
            // Remember that if the isShowingList is set to NO, then only a single row
            // is displayed, containing the selected value.
            // If the isShowingList is set to YES, then a list of values is displayed
            // and all the items of the demoData array should be used.
            if (!isShowingList) {
                // Not a list in this case.
                // We'll only display the item of the demoData array of which array
                // index matches the selectedValueList.
                [[cell textLabel] setText:[demoData objectAtIndex:selectedValueIndex]];
                
                // We'll also display the disclosure indicator to prompt user to
                // tap on that cell.
                cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            }
            else{
                // Listing the array items.
                [[cell textLabel] setText:[demoData objectAtIndex:[indexPath row]]];
                
                // We'll display the checkmark next to the already selected value.
                // That means that we'll apply the checkmark only to the cell
                // where the [indexPath row] value is equal to selectedValueIndex value.
                if ([indexPath row] == selectedValueIndex) {
                    cell.accessoryType = UITableViewCellAccessoryCheckmark;
                }
                else{
                    cell.accessoryType = UITableViewCellAccessoryNone;
                }
            }
        }
        
        return cell;

      }

    - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
    {
        if ([indexPath section] == 1) {
            // The job we have to do here is pretty easy.
            // 1. If the isShowingList variable is set to YES, then we save the
            //     index of the row that the user tapped on (save it to the selectedValueIndex variable),
            // 2. Change the value of the isShowingList variable.
            // 3. Reload not the whole table but only the section we're working on.
            //
            // Note that only that last two steps are necessary when the isShowingList
            // variable is set to NO.
            
            // Step 1.
            ///////uncomment me to select dropdown value
    //      if (isShowingList) {
    //            selectedValueIndex = [indexPath row];
    //        }
            isShowingList = !isShowingList;
           // if(isShowingList){
            //[indexPath row. ]
            //}
     
            // Step 2.
            
            // Step 3. Here I chose to use the fade animation, but you can freely
            // try all of the provided animation styles and select the one it suits
            // you the best.
            [defaulterloans_tv reloadSections:[NSIndexSet indexSetWithIndex:1] withRowAnimation:UITableViewRowAnimationFade];
        }
        else{
            return;
        }
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

