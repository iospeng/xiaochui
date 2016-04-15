//
//  AppDelegate.m
//  03_15_demo2
//
//  Created by 李志鹏 on 16/3/15.
//  Copyright © 2016年 李志鹏. All rights reserved.
//

#import "AppDelegate.h"
#import "myViewController.h"

#define ScreenHeight [[UIScreen mainScreen] bounds].size.height

#define ScreenWidth [[UIScreen mainScreen] bounds].size.width


@interface AppDelegate ()


@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    myViewController *my = [[myViewController alloc] init];
    self.window.rootViewController = my;
    [self.window makeKeyAndVisible];
    AppDelegate * myDelegate = [[UIApplication sharedApplication] delegate];
    if (ScreenHeight >480) {
        myDelegate.autoSizeScaleX = ScreenWidth/320;
        myDelegate.autoSizeScaleY = ScreenHeight/568;
        NSLog(@"myDelegate.autoSizeScaleX = %f",myDelegate.autoSizeScaleX);
        NSLog(@"myDelegate.autoSizeScaleY = %f",myDelegate.autoSizeScaleY);
        NSLog(@"screenwidth = %f",ScreenWidth);
        NSLog(@"ScreenHeight = %f",ScreenHeight);
        my.kuandu = myDelegate.autoSizeScaleX;
        my.gaodu = myDelegate.autoSizeScaleY;
    }else
    {
    
        myDelegate.autoSizeScaleX = 1.0;
        myDelegate.autoSizeScaleY = 1.0;
    }
    
    
    return YES;
}
//CG_INLINE CGRect
//CGRectMake1(CGFloat x,CGFloat y,CGFloat width,CGFloat height)
//{
//    AppDelegate *myDelegate = [[UIApplication sharedApplication] delegate];
//    
//    CGRect rect;
//    
//    rect.origin.x = x * myDelegate.autoSizeScaleX; rect.origin.y = y * myDelegate.autoSizeScaleY;
//    
//    rect.size.width = width * myDelegate.autoSizeScaleX; rect.size.height = height * myDelegate.autoSizeScaleY;
//    
//    return rect;
//
//}

//CG_INLINE CGRect
//
//CGRectMake1(CGFloat x, CGFloat y, CGFloat width, CGFloat height)
//
//{
//    
//    AppDelegate *myDelegate = [[UIApplication sharedApplication] delegate];
//    
//    CGRect rect;
//    
//    rect.origin.x = x * myDelegate.autoSizeScaleX; rect.origin.y = y * myDelegate.autoSizeScaleY;
//    
//    rect.size.width = width * myDelegate.autoSizeScaleX; rect.size.height = height * myDelegate.autoSizeScaleY;
//    
//    return rect;
//    
//}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
