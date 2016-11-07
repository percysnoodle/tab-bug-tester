//
//  AppDelegate.m
//  Tab bug tester
//
//  Created by Simon Booth on 07/11/2016.
//  Copyright © 2016 percysnoodle.com. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    UIViewController *firstViewController = [[UIViewController alloc] init];
    firstViewController.tabBarItem.image = [UIImage imageNamed:@"first"];
    firstViewController.tabBarItem.title = @"First";
    firstViewController.tabBarItem.accessibilityLabel = @"A long label for the first tab";
    
    UIViewController *secondViewController = [[UIViewController alloc] init];
    secondViewController.tabBarItem.image = [UIImage imageNamed:@"second"];
    secondViewController.tabBarItem.title = @"Second";
    secondViewController.tabBarItem.accessibilityLabel = @"A long label for the second tab";
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController.viewControllers = @[ firstViewController, secondViewController ];
    
    self.window = [[UIWindow alloc] init];
    self.window.rootViewController = tabBarController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
