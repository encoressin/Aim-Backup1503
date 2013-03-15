//
//  AppDelegate.m
//  aim
//  Description - Default class for the project
//  Created by encore on 08/01/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

#import "LoginScreen.h"
#import "mainmenuViewController.h"
#import "orderInformation.h"


@implementation AppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;
@synthesize str_orientation;
@synthesize navcontroller;
- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        self.viewController = [[[LoginScreen alloc] initWithNibName:@"LoginScreen_iPhone" bundle:nil] autorelease];
       
    } else {
        self.viewController = [[[LoginScreen alloc] initWithNibName:@"LoginScreen_iPad" bundle:nil] autorelease];
            }
    
    self.navcontroller=[[UINavigationController alloc] initWithRootViewController:self.viewController];
    [navcontroller setNavigationBarHidden:YES];
    self.window.rootViewController = self.navcontroller;
    [self.window makeKeyAndVisible];
    return YES;
}
- (NSUInteger)application:(UIApplication*)application
	ForWindow:(UIWindow*)window
{
    UIInterfaceOrientation orient=[[UIApplication sharedApplication]statusBarOrientation];
    if(orient==UIInterfaceOrientationLandscapeLeft||orient==UIInterfaceOrientationLandscapeRight){
        self.str_orientation=@"landscape";
        
    }else{
        self.str_orientation=@"portrait";
    }
    NSString *className = NSStringFromClass([[self.navcontroller topViewController] class]);

    if([className isEqualToString:@"memberSearchResult"]){
     
        
        return UIInterfaceOrientationMaskAll;
    }else {
        
        
        return UIInterfaceOrientationMaskAllButUpsideDown;
        
    }
}
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
