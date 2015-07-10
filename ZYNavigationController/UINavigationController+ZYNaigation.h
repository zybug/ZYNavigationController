//
//  UINavigationController+ZYNaigation.h
//  ZYNavigationController
//
//  Created by zy on 15/6/24.
//  Copyright (c) 2015年 zy. All rights reserved.
//

// 欢迎关注www.zybug.com(万网主机)  ios.zybug.com(Github主机) test.zybug.com（三蛋主机）

#import <UIKit/UIKit.h>

///说明： 只是一个思路，没有写太多的东西

@protocol ZYNav <NSObject>

@optional

- (void)ZYNavigation:(NSString *)className;

- (void)ZYPushViewC:(UIViewController *)viewC param:(NSDictionary *)params;

- (void)ZYNaviBack:(NSDictionary *)dict;

@end

/// 说明： 如果是StoryBoard 或者是 XIB 文件 可以换个样子封装，其实是一样的，就是简化传值，还可以判断出来是哪个页面传到当前页面的，也需要大家一起来帮助或者提供思路给我， 作者联系方式：zy@zybug.com

@interface UINavigationController (ZYNaigation)

- (void)ZYNavi:(UIViewController *)viewC withParam:(NSDictionary *)dict;

- (void)ZYNaviBackwithParam:(NSDictionary *)dict;


@end
