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
        @synthesize managedObjectContext = _managedObjectContext;
        @synthesize managedObjectModel = _managedObjectModel;
        @synthesize persistentStoreCoordinator = _persistentStoreCoordinator;

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
        - (NSManagedObjectContext *)managedObjectContext
        {
            if (_managedObjectContext != nil) {
                return _managedObjectContext;
            }
            
            NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
            if (coordinator != nil) {
                _managedObjectContext = [[NSManagedObjectContext alloc] init];
                [_managedObjectContext setPersistentStoreCoordinator:coordinator];
            }
            return _managedObjectContext;
        }

        - (NSManagedObjectModel *)managedObjectModel
        {
            if (_managedObjectModel != nil) {
                return _managedObjectModel;
            }
            NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"coredatatrial" withExtension:@"momd"];
            _managedObjectModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
            return _managedObjectModel;
        }
        - (NSPersistentStoreCoordinator *)persistentStoreCoordinator
        {
            if (_persistentStoreCoordinator != nil) {
                return _persistentStoreCoordinator;
            }
            
            //NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@"KCBS.sqlite"];
            
            NSError *error = nil;
            _persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];
        //    if (![_persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error]) {
        //        /*
        //         Replace this implementation with code to handle the error appropriately.
        //         
        //         abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        //         
        //         Typical reasons for an error here include:
        //         * The persistent store is not accessible;
        //         * The schema for the persistent store is incompatible with current managed object model.
        //         Check the error message to determine what the actual problem was.
        //         
        //         
        //         If the persistent store is not accessible, there is typically something wrong with the file path. Often, a file URL is pointing into the application's resources directory instead of a writeable directory.
        //         
        //         If you encounter schema incompatibility errors during development, you can reduce their frequency by:
        //         * Simply deleting the existing store:
        //         [[NSFileManager defaultManager] removeItemAtURL:storeURL error:nil]
        //         
        //         * Performing automatic lightweight migration by passing the following dictionary as the options parameter:
        //         @{NSMigratePersistentStoresAutomaticallyOption:@YES, NSInferMappingModelAutomaticallyOption:@YES}
        //         
        //         Lightweight migration will only work for a limited set of schema changes; consult "Core Data Model Versioning and Data Migration Programming Guide" for details.
        //         
        //         */
        //        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        //        abort();
        //    }
            
            return _persistentStoreCoordinator;
        }

        - (NSURL *)applicationDocumentsDirectory
        {
            return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
        }



        @end