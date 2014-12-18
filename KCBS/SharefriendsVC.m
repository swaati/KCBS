//
//  SharefriendsVC.m
//  KCBS
//
//  Created by YK Software Solutions on 12/12/14.
//  Copyright (c) 2014 YK Software Solutions. All rights reserved.
//

#import "SharefriendsVC.h"


@interface SharefriendsVC ()

@end

@implementation SharefriendsVC
//@synthesize fb;
//@synthesize twtr;
//@synthesize mail;
//@synthesize watsup;
//@synthesize sms;
@synthesize socialarray;

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
    socialarray= @[@"Facebook", @"Twitter",@"Mail",@"Watsapp",@"SMS"];
//       fb = [UIButton buttonWithType: UIButtonTypeRoundedRect];
//       fb.layer.cornerRadius = 5;
//      [fb addTarget:self
//        action:@selector(fbbtn_Clicked)
//              forControlEvents:UIControlEventTouchUpInside];
//      [fb setFrame:CGRectMake(20,100,100, 30)];
//        fb.backgroundColor=[UIColor blackColor];
//     [fb setTitle:@"Facebook" forState:UIControlStateNormal];
//      [self.view addSubview:fb];
//    twtr= [UIButton buttonWithType: UIButtonTypeRoundedRect];
//    twtr.layer.cornerRadius = 5;
//    [twtr addTarget:self
//           action:@selector(twtrbtn_Clicked)
// forControlEvents:UIControlEventTouchUpInside];
//    [twtr setFrame:CGRectMake(20,150,100, 30)];
//    twtr.backgroundColor=[UIColor blackColor];
//    [twtr setTitle:@"Twitter" forState:UIControlStateNormal];
//    [self.view addSubview:twtr];
//    mail= [UIButton buttonWithType: UIButtonTypeRoundedRect];
//    mail.layer.cornerRadius = 5;
//    [mail addTarget:self
//             action:@selector(mailbtn_Clicked)
//   forControlEvents:UIControlEventTouchUpInside];
//    [mail setFrame:CGRectMake(20,200,100, 30)];
//    mail.backgroundColor=[UIColor blackColor];
//    [mail setTitle:@"Mail" forState:UIControlStateNormal];
//    [self.view addSubview:mail];
//    watsup=[UIButton buttonWithType: UIButtonTypeRoundedRect];
//    watsup.layer.cornerRadius = 5;
//    [watsup addTarget:self
//             action:@selector(watsbtnclicked)
//   forControlEvents:UIControlEventTouchUpInside];
//    [watsup setFrame:CGRectMake(20,250,100, 30)];
//    watsup.backgroundColor=[UIColor blackColor];
//    [watsup setTitle:@"WhatsApp" forState:UIControlStateNormal];
//    [self.view addSubview:watsup];
//    sms=[UIButton buttonWithType: UIButtonTypeRoundedRect];
//    sms.layer.cornerRadius = 5;
//    [sms addTarget:self
//               action:@selector(smsbtnclicked)
//     forControlEvents:UIControlEventTouchUpInside];
//    [sms setFrame:CGRectMake(20,300,100, 30)];
//    sms.backgroundColor=[UIColor blackColor];
//    [sms setTitle:@"SMS" forState:UIControlStateNormal];
//    [self.view addSubview:sms];
    socialTableView =[[UITableView alloc] initWithFrame:CGRectMake(0,0,320,480) style:UITableViewStylePlain];
    //[socialTableView setSeparatorStyle: UITableViewCellSeparatorStyleNone];
    socialTableView.dataSource = self;
    socialTableView.delegate = self;
    //socialTableView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]];
    socialTableView.scrollEnabled = NO;
    [self.view addSubview:socialTableView];
    // Do any additional setup after loading the view from its nib.
}
//-(void)fbbtn_Clicked{
//    
//  
//        SLComposeViewController *controller = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
//        
//        [controller setInitialText:@"Hi facebook friend ! KCBS is just amazing!"];
//        [self presentViewController:controller animated:YES completion:Nil];
//    
//}
//-(void)twtrbtn_Clicked{
//    
//            SLComposeViewController *tweetSheet = [SLComposeViewController
//                                               composeViewControllerForServiceType:SLServiceTypeTwitter];
//        [tweetSheet setInitialText:@"Hi twitter friend ! KCBS is just amazing!"];
//        [self presentViewController:tweetSheet animated:YES completion:nil];
//   
//}
//-(void)mailbtn_Clicked{
//    MFMailComposeViewController *emailShareController = [[MFMailComposeViewController alloc] init];
//    emailShareController.mailComposeDelegate = self;
//    [emailShareController setSubject:@"Share App"];
//    [emailShareController setMessageBody:@"Hi! KCBS is awesome!" isHTML:NO];
////    [emailShareController addAttachmentData:UIImageJPEGRepresentation(image, 1) mimeType:@"image/jpeg" fileName:@"your_image.jpeg"];
//    if (emailShareController)[self presentViewController:emailShareController animated:YES completion:nil];
//}
//-(void)watsbtnclicked{
//NSString * msg = @"Hi! KCBS is awesome!";
//NSString * urlWhats = [NSString stringWithFormat:@"whatsapp://send?text=%@",msg];
//NSURL * whatsappURL = [NSURL URLWithString:[urlWhats stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
//if ([[UIApplication sharedApplication] canOpenURL: whatsappURL]) {
//    [[UIApplication sharedApplication] openURL: whatsappURL];
//} else {
//    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"WhatsApp not installed." message:@"Your device has no WhatsApp installed." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
//    [alert show];
//}
//}

//-(void)smsbtnclicked{
//    if(![MFMessageComposeViewController canSendText]) {
//        UIAlertView *warningAlert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Your device doesn't support SMS!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
//        [warningAlert show];
//        return;
//    }
//    
//   // NSArray *recipents = @[@"12345678", @"72345524"];
//    NSString *message = [NSString stringWithFormat:@"Hi,KCBS is awesome!"];
//    
//    MFMessageComposeViewController *messageController = [[MFMessageComposeViewController alloc] init];
//    messageController.messageComposeDelegate = self;
//   // [messageController setRecipients:recipents];
//    [messageController setBody:message];
//    
//    // Present message view controller on screen
//    [self presentViewController:messageController animated:YES completion:nil];
//}




- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    //    //return 4;
    return [socialarray count];
    //
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
    }
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(20,6, 30, 30)];
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
        imgView.image = [UIImage imageNamed:@"fb.png"];
        //imgView.frame=CGRectMake(20, 8, 30, 30);
        [cell.contentView addSubview:imgView];
        //imgView.image = [UIImage imageNamed:@"img.png"];
        //imgView.frame=CGRectMake(20, 8, 30, 30);
        
        [cell.contentView addSubview:imgView];
        
        lblCell.text=@"Facebook";
        [cell.contentView addSubview:lblCell];
        //[cell.contentView addSubview:lblCellLine];
        //imgView.image = [UIImage imageNamed:@"search_new.png"];
        //imgView.frame=CGRectMake(20-2, 12+2, 25, 25);
        //[cell.contentView addSubview:imgView];
        
        
    }
    else if (indexPath.row==1)
    {
        imgView.image = [UIImage imageNamed:@"twtr.png"];
        //imgView.frame=CGRectMake(20, 8, 30, 30);
        
        [cell.contentView addSubview:imgView];
        lblCell.text=@"Twitter";
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
        imgView.image = [UIImage imageNamed:@"mail.jpeg"];
        //imgView.frame=CGRectMake(20, 8, 30, 30);
        
        [cell.contentView addSubview:imgView];
        lblCell.text=@"Mail";
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
    else if (indexPath.row==3)
    {
        imgView.image = [UIImage imageNamed:@"wtsap.jpeg"];
        //imgView.frame=CGRectMake(20, 8, 30, 30);
        
        [cell.contentView addSubview:imgView];
        lblCell.text=@"Watsapp";
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
    else if (indexPath.row==4)
    {
        imgView.image = [UIImage imageNamed:@"sms.jpeg"];
        //imgView.frame=CGRectMake(20, 8, 30, 30);
        
        [cell.contentView addSubview:imgView];
        lblCell.text=@"SMS";
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


    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Alert" message:[NSString stringWithFormat:@"Selected Value is %@",[socialarray objectAtIndex:indexPath.row]] delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
   [alertView show];
    

    if (indexPath.row==0){
        
              SLComposeViewController *controller = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        
                [controller setInitialText:@"Hi facebook friend ! KCBS is just amazing!"];
                [self presentViewController:controller animated:YES completion:Nil];
        

 }
    else if (indexPath.row==1){
        
                    SLComposeViewController *tweetSheet = [SLComposeViewController
                                                      composeViewControllerForServiceType:SLServiceTypeTwitter];
              [tweetSheet setInitialText:@"Hi twitter friend ! KCBS is just amazing!"];
                [self presentViewController:tweetSheet animated:YES completion:nil];
       
    
    
    
    }
    else if(indexPath.row==2){
          MFMailComposeViewController *emailShareController = [[MFMailComposeViewController alloc] init];
           emailShareController.mailComposeDelegate = self;
           [emailShareController setSubject:@"Share App"];
          [emailShareController setMessageBody:@"Hi! KCBS is awesome!" isHTML:NO];
           //[emailShareController addAttachmentData:UIImageJPEGRepresentation(image, 1) mimeType:@"image/jpeg"
            if (emailShareController)[self presentViewController:emailShareController animated:YES completion:nil];

        
        
        
    }
    else if(indexPath.row==3){
       NSString * msg = @"Hi! KCBS is awesome!";
        NSString * urlWhats = [NSString stringWithFormat:@"whatsapp://send?text=%@",msg];
        NSURL * whatsappURL = [NSURL URLWithString:[urlWhats stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
        if ([[UIApplication sharedApplication] canOpenURL: whatsappURL]) {
            [[UIApplication sharedApplication] openURL: whatsappURL];
        } else {
            UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"WhatsApp not installed." message:@"Your device has no WhatsApp installed." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [alert show];
        }

        
        
        
        
        
        
        
        
        
        
    }
    else if(indexPath.row==4){
           if(![MFMessageComposeViewController canSendText]) {
               UIAlertView *warningAlert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Your device doesn't support SMS!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                [warningAlert show];
               return;
            }
        
        //   // NSArray *recipents = @[@"12345678", @"72345524"];
           NSString *message = [NSString stringWithFormat:@"Hi,KCBS is awesome!"];
        
            MFMessageComposeViewController *messageController = [[MFMessageComposeViewController alloc] init];
            messageController.messageComposeDelegate = self;
        //   // [messageController setRecipients:recipents];
            [messageController setBody:message];
        //
        //    // Present message view controller on screen
          [self presentViewController:messageController animated:YES completion:nil];
        
        
        
        
    }

}
- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
