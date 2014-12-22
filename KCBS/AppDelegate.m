//
//  AppDelegate.m
//  KCBS
//
//  Created by YK Software Solutions on 14/11/14.
//  Copyright (c) 2014 YK Software Solutions. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize navigationController;
@synthesize mvc;
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    //create the navigation controller and add the controllers view to the window
    
    navigationController = [[UINavigationController alloc] init];
    [self.window addSubview:[self.navigationController view]];
    
    //check if the first viewcontroller eixsts, otherwise create it
if(self.mvc == nil)
    {
        MenuViewController *menuView = [[MenuViewController alloc] init];
        self.mvc = menuView;
    }
//
    //push the first viewcontroller into the navigation view controller stack
    self.navigationController.navigationBarHidden=TRUE;
   [self.navigationController pushViewController:self.mvc animated:YES];
    //UIImage *image = [UIImage im];
    
    //    UIButton *logoView = [[UIButton alloc] initWithFrame:CGRectMake(0,0,85,40)];
    //    [logoView setBackgroundImage:[UIImage imageNamed:@"kcbsLogo.png"] forState:UIControlStateNormal];
    //    [logoView setUserInteractionEnabled:NO];
    //
    //    self.navigationController.navigationItem.titleView = logoView;
    //
    //self.navigationItem.titleView = iv;
    //    UIImageView* imageView = [[UIImageView alloc] initWithFrame:CGRectMake(130, 20, 50,  54)];
    //    imageView.image = [UIImage imageNamed:@"kcbsLogo.png"];
    //    [self.navigationController.view addSubview:imageView];
    //[self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"kcbsLogo.png"] forBarMetrics:UIBarMetricsDefault];
    //    UIImage *image = [UIImage imageNamed:@"kcbsLogo.png"];
    
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    
    UILocalNotification *locationNotification = [launchOptions objectForKey:UIApplicationLaunchOptionsLocalNotificationKey];
    if (locationNotification) {
        // Set icon badge number to zero
        application.applicationIconBadgeNumber = 0;
    }
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    //do nothing
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    //do nothing
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    //do nothing
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    //do nothing
}

- (void)applicationWillTerminate:(UIApplication *)application {
    //do nothing
}
- (void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification
{
    UIApplicationState state = [application applicationState];
    if (state == UIApplicationStateActive) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Customer Reminder"
                                                        message:notification.alertBody
                                                       delegate:self cancelButtonTitle:@"OK"
                              
                                              otherButtonTitles:nil];
        [alert show];
    }
    //
//    //  setting badge value of tab bar as shown below.
//    application.applicationIconBadgeNumber = 0;
//}

    // Request to reload table view data
    [[NSNotificationCenter defaultCenter] postNotificationName:@"reloadData" object:self];
    
    // Set icon badge number to zero
    application.applicationIconBadgeNumber = 0;
}
@end