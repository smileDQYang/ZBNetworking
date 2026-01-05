//
//  SceneDelegate.m
//  ZBNetworkingDemo
//
//  Created by Suzhibin on 2026/1/5.
//  Copyright © 2026 Suzhibin. All rights reserved.
//

#import "SceneDelegate.h"
#import "CustomTabBarController.h"
#import "ZBNetworking.h"
#import "RequestTool.h"
@implementation SceneDelegate

- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // 确保当前Scene是窗口场景（过滤非窗口类型的Scene）
    if (![scene isKindOfClass:[UIWindowScene class]]) {
        return;
    }
    
    UIWindowScene *windowScene = (UIWindowScene *)scene;
    self.window = [[UIWindow alloc] initWithWindowScene:windowScene];
    self.window.frame = windowScene.coordinateSpace.bounds;
    
    NSString *cachePath = [[ZBCacheManager sharedInstance]ZBAppCachePath];
    NSLog(@"cachePath = %@",cachePath);

    
    #pragma mark -  公共配置 RequestTool
    /**
     证书设置
     公共配置
     插件机制
     */
    [[RequestTool sharedInstance] setupPublicParameters]; //设置在所有请求前 一般放在AppDelegate 中调用
    
    CustomTabBarController *tabbar = [[CustomTabBarController alloc]init];
    
    self.window.rootViewController = tabbar;
    
    [self.window makeKeyAndVisible];
}


- (void)sceneDidEnterBackground:(UIScene *)scene {

}

- (void)sceneWillEnterForeground:(UIScene *)scene {

}

- (void)sceneDidBecomeActive:(UIScene *)scene {

}

- (void)sceneWillResignActive:(UIScene *)scene {
   
}
@end
