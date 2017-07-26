//
//  AppDelegate.m
//  MHDrawer
//
//  Created by 杜明豪 on 2017/7/26.
//  Copyright © 2017年 杜明豪. All rights reserved.
//

#import "AppDelegate.h"

/**
 部分代码用于测试程序的执行顺序.当程序加载完毕的时候就会执行APP launch 这个方法,
 如果在方法内指定了rootViewController,就会加载,并把window视图设为rootViewController的view.
 如果没有的话,则会加载storyboad中的initial指向的视图控制器.
 注意:
  1. 如果在APP launch方法中有指定rootViewController,那么就不检查storyboad中的initial指向了
  2. 如果没有则需要检查storyboad中的initial指向,然后正常启动.根据initial指向启动,rootViewController.
  3. 程序默认在创建proj的时候,会自动创建一个,命名为ViewController的类,并在storyboad中设为initial的指向.
 
 */
@interface AppDelegate ()

@end

@implementation AppDelegate
//APP launch
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSLog(@"app launch");
    //self.window.rootViewController = [[MH_MainViewController alloc]init];
   // [self.window makeKeyAndVisible];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
