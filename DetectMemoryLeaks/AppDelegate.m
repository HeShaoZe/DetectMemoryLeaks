//
//  AppDelegate.m
//  DetectMemoryLeaks
//
//  Created by Leak on 2023/10/13.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    ViewController *viewVC = [[ViewController alloc] init];
    UINavigationController *rooNav = [[UINavigationController alloc] initWithRootViewController:viewVC];
    self.window.rootViewController = rooNav;
    [self.window makeKeyAndVisible];
    return YES;
}


#pragma mark - UISceneSession lifecycl

@end
