//
//  AppDelegate.m
//  DrawShape
//
//  Created by Twisted Fate on 2020/3/17.
//  Copyright © 2020 Twisted Fate. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
//    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
//    self.window.backgroundColor = [UIColor whiteColor];
//    [self.window makeKeyAndVisible];

 
 
    UIWindow *delegateWindow = [UIApplication sharedApplication].delegate.window;
    NSLog(@"delegateWindow == %p", delegateWindow);
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    NSLog(@"keyWindow == %p", keyWindow);
    
//    NSLog(@"self === %@\ndelegate == %@", self, [UIApplication sharedApplication].delegate);
    
    return YES;
}




@end
