//
//  UINavigationController+ZYNaigation.m
//  ZYNavigationController
//
//  Created by zy on 15/6/24.
//  Copyright (c) 2015年 zy. All rights reserved.
//

// 欢迎关注www.zybug.com(万网主机)  ios.zybug.com(Github主机) test.zybug.com（三蛋主机）

#import "UINavigationController+ZYNaigation.h"

@implementation UINavigationController (ZYNaigation)

- (void)ZYNavi:(UIViewController *)viewC withParam:(NSDictionary *)dict {
    
    //传递参数
    if ([viewC respondsToSelector:@selector(ZYPushViewC:param:)]) {
        [viewC performSelector:@selector(ZYPushViewC:param:) withObject:self.visibleViewController withObject:dict];
    }
    
    if ([viewC respondsToSelector:@selector(ZYNavigation:)]) {
        [viewC performSelector:@selector(ZYNavigation:) withObject:[NSString stringWithFormat:@"%@",[self.visibleViewController class]]];
    }
    
    // 导航跳转
    [self pushViewController:viewC animated:YES];
}

- (void)ZYNaviBackwithParam:(NSDictionary *)dict {
    if (self.viewControllers.count <= 1) {
        return;
    }
    UIViewController * vc = (UIViewController *)self.viewControllers[self.viewControllers.count - 2];
    
    if ([vc respondsToSelector:@selector(ZYNaviBack:)]) {
        [vc performSelector:@selector(ZYNaviBack:) withObject:dict];
    }
    [self popViewControllerAnimated:YES];
    
}


@end
