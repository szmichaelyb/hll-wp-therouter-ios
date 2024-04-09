//
//  AppDelegate.m
//  TheRouter-ObjectiveCDemo
//
//  Created by mars.yao on 2024/1/25.
//

#import "AppDelegate.h"
#import "TheRouter_ObjectiveCDemo-Swift.h"

@interface AppDelegate ()
@end

@implementation AppDelegate
- (BOOL)application:(UIApplication *)app didFinishLaunchingWithOptions:(NSDictionary *)opts
{
    [TheRouterService initTheRouter];
    return YES;
}

#pragma mark - UISceneSession lifecycle
- (UISceneConfiguration *)application:(UIApplication *)app configurationForConnectingSceneSession:(UISceneSession *)session options:(UISceneConnectionOptions *)options  API_AVAILABLE(ios(13.0))
{
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:session.role];
}

- (void)application:(UIApplication *)app didDiscardSceneSessions:(NSSet<UISceneSession *> *)sessions API_AVAILABLE(ios(13.0))
{}
@end
