//
//  AppDelegate.m
//  UIDemo
//
//  Created by anzhilin on 2023/9/16.
//

#import "AppDelegate.h"
#import "TablerViewController.h"

#define SCREEN_RECT [UIScreen mainScreen].bounds

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:SCREEN_RECT];
    TablerViewController *tableController = [[TablerViewController alloc] init];
    tableController.view.backgroundColor = UIColor.whiteColor;
    tableController.view.frame = SCREEN_RECT;
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:tableController];
    
    _window.rootViewController = nav;
    [_window makeKeyAndVisible];
    
    return YES;
}

@end
