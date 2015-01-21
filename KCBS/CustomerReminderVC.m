        //
        //  CustomerReminderVC.m
        //  KCBS
        //
        //  Created by YK Software Solutions on 05/12/14.
        //  Copyright (c) 2014 YK Software Solutions. All rights reserved.
        //

        #import "CustomerReminderVC.h"

        @interface CustomerReminderVC ()
        - (void)reloadTable;

        @end

        @implementation CustomerReminderVC

        @synthesize customerdreminders_tv;
        @synthesize customerreminders_array;
        @synthesize reminder_view;
        @synthesize name_lbl;
        @synthesize addreminder_btn;
        @synthesize dataArray;
        @synthesize imgview_customreminders;
        @synthesize sweet;

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
            self.dataArray = [[NSMutableArray alloc] initWithObjects:@"Tiger",@"Leopard",@"Snow Leopard",@"Lion",nil];
            self.parentViewController.navigationItem.titleView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"small.png"]];
            reminder_view=[[UIView alloc]initWithFrame:CGRectMake(0,65, 320,65)];
            reminder_view.backgroundColor=[UIColor colorWithRed:0.965 green:0.506 blue:0.129 alpha:1];;
            [self.view addSubview:reminder_view];
            name_lbl= [[UILabel alloc]initWithFrame:CGRectMake(100,20,100,20)];
            name_lbl.font=[UIFont fontWithName:@"Helvetica-Bold" size:16];
            name_lbl.textColor = [UIColor whiteColor];
            name_lbl.backgroundColor = [UIColor clearColor];
            name_lbl.text = @"Reminders";
            [reminder_view addSubview:name_lbl];
            imgview_customreminders = [[UIImageView alloc]
                                      initWithFrame:CGRectMake(12,8,40,40)];
            [imgview_customreminders setImage:[UIImage imageNamed:@"reminderSIcon.png"]];
            [imgview_customreminders setContentMode:UIViewContentModeScaleAspectFit];
            [reminder_view addSubview:imgview_customreminders];
            
            customerreminders_array= @[@"0", @"1", @"2",@"3",@"4"];
            customerdreminders_tv =[[UITableView alloc] initWithFrame:CGRectMake(0,131,320,480) style:UITableViewStylePlain];
            [customerdreminders_tv setSeparatorStyle: UITableViewCellSeparatorStyleSingleLine];
            customerdreminders_tv.dataSource = self;
            customerdreminders_tv.delegate = self;
            customerdreminders_tv.scrollEnabled = YES;
            [self.view addSubview:customerdreminders_tv];
            addreminder_btn = [UIButton buttonWithType: UIButtonTypeRoundedRect];
            addreminder_btn.layer.cornerRadius = 5;
            
            //[addreminder_btn setBackgroundColor: [UIColor colorWithRed:0.302 green:0.569 blue:0.749 alpha:1]];
            [addreminder_btn setTitleColor:[UIColor whiteColor] forState:
             UIControlStateNormal];
            
               [addreminder_btn addTarget:self
                            action:@selector(addreminderbtn_Clicked)
                    forControlEvents:UIControlEventTouchUpInside];
            [addreminder_btn setFrame:CGRectMake(210,15, 50, 30)];
            [addreminder_btn setTitle:@"Add" forState:UIControlStateNormal];
            [reminder_view addSubview:addreminder_btn];

            [[NSNotificationCenter defaultCenter] addObserver:self
                                                     selector:@selector(reloadTable)
                                                         name:@"reloadData"
                                                       object:nil];

            // Do any additional setup after loading the view.
        }
        - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
            
            return 1;
            
        }

        - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
        {
            
            //return [dataArray count];
            return [[[UIApplication sharedApplication] scheduledLocalNotifications] count];

            
        }
        -(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
            return 100.0;

        }
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
        //    static NSString *CellIdentifier = @"Cell";
        //    
        //    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        //    
        //    if (cell == nil) {
        //        
        //        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        //        
        //        
        //            UILabel *father_namelbl=[[UILabel alloc]initWithFrame:CGRectMake(10,10,200,20)];
        //            father_namelbl.numberOfLines = 0;
        //            father_namelbl.font = [UIFont fontWithName:@"Helvetica-Bold" size:15];
        //            father_namelbl.textColor = [UIColor blackColor];
        //            father_namelbl.text=@"Recovery Visits";
        //            [cell.contentView addSubview:father_namelbl];
        //       
        //        
        //        
        //    }
        //    
        //    return cell;
            static NSString *CellIdentifier = @"Cell";
            UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
            
            // Get list of local notifications
            NSArray *localNotifications = [[UIApplication sharedApplication] scheduledLocalNotifications];
            UILocalNotification *localNotification = [localNotifications objectAtIndex:indexPath.row];
            if(cell==nil){
                cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
                UILabel *msg_namelbl=[[UILabel alloc]initWithFrame:CGRectMake(10,10,200,20)];
                        msg_namelbl.numberOfLines = 0;
                            msg_namelbl.font = [UIFont fontWithName:@"Helvetica" size:16];
                          msg_namelbl.textColor = [UIColor blackColor];
                           msg_namelbl.text=localNotification.alertBody;
                
                UILabel *date_namelbl=[[UILabel alloc]initWithFrame:CGRectMake(10,40,200,20)];
                date_namelbl.numberOfLines = 0;
                date_namelbl.font = [UIFont fontWithName:@"Helvetica" size:14];
                date_namelbl.textColor = [UIColor blackColor];
                date_namelbl.text=[localNotification.fireDate description];
                sweet=[localNotification.fireDate description];
                 NSLog(@"date= %@",sweet);
               
                [cell.contentView addSubview:msg_namelbl];
                 [cell.contentView addSubview:date_namelbl];
            }
            // Display notification info
            //[cell.textLabel setText:localNotification.alertBody];
            //[cell.detailTextLabel setText:[localNotification.fireDate description]];
            
            return cell;

        }

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


        -(void)addreminderbtn_Clicked
        {
            CustomerAddremindersVC *addremind_vc = [[ CustomerAddremindersVC alloc]init];
          [self.navigationController pushViewController:addremind_vc animated:YES];
           addremind_vc = nil;
        //    static NSString *CellIdentifier = @"Cell";
        //    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        //    
        //    
        //    UILabel *father_namelbl=[[UILabel alloc]initWithFrame:CGRectMake(10,10,200,20)];
        //    father_namelbl.numberOfLines = 0;
        //    father_namelbl.font = [UIFont fontWithName:@"Helvetica-Bold" size:15];
        //    father_namelbl.textColor = [UIColor blackColor];
        //    father_namelbl.text=@"Recovery Visits";
        //    [cell.contentView addSubview:father_namelbl];
        //    
        //
        //    [dataArray addObject:cell];
        //    [customerdreminders_tv reloadData];

        }
        - (void)didReceiveMemoryWarning
        {
            [super didReceiveMemoryWarning];
            // Dispose of any resources that can be recreated.
        }
        - (void)reloadTable
        {
            [self.customerdreminders_tv reloadData];
        }


         // Override to support conditional editing of the table view.
         - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
         {
         // Return NO if you do not want the specified item to be editable.
         return YES;
         }



         // Override to support editing the table view.
        - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
        {
        //    if (editingStyle == UITableViewCellEditingStyleDelete) {
        //        // Delete the row from the data source
        //        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        //        
                if (editingStyle == UITableViewCellEditingStyleDelete) {
                    
        //            [controller removeObjectFromListAtIndex:indexPath.row];
                    [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
                }
           
                
                
                
                
           
            else if (editingStyle == UITableViewCellEditingStyleInsert) {
                // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
            }
        }



         // Override to support rearranging the table view.
         - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
         {
         }



         // Override to support conditional rearranging of the table view.
         - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
         {
         // Return NO if you do not want the item to be re-orderable.
         return YES;
         }


        #pragma mark - Table view delegate

        //- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
        //{
        //    // Navigation logic may go here. Create and push another view controller.
        //    /*
        //     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
        //     // ...
        //     // Pass the selected object to the new view controller.
        //     [self.navigationController pushViewController:detailViewController animated:YES];
        //     */
        //}
        //

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


