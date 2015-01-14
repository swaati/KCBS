        //
        //  AppDelegate.h
        //  KCBS
        //
        //  Created by YK Software Solutions on 14/11/14.
        //  Copyright (c) 2014 YK Software Solutions. All rights reserved.
        //

        #import <UIKit/UIKit.h>
        #import "MenuViewController.h"
        #import "AgentLogInViewController.h"

        @interface AppDelegate : UIResponder <UIApplicationDelegate>
        @property (strong, nonatomic) UIWindow *window;
        @property (strong, nonatomic) UINavigationController *navigationController;
        @property (nonatomic,strong) MenuViewController *mvc;
        //@property (nonatomic,strong)MainmenuViewController *mvc;
        //@property (strong, nonatomic) MenuViewController * menuViewController;
        @property(nonatomic,strong) NSString *agent_usrname;
        @property(nonatomic,strong) NSString *agent_pass;
        @property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
        @property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
        @property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;

        - (NSString *)applicationDocumentsDirectory;
        @end