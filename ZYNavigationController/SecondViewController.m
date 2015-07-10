//
//  SecondViewController.m
//  ZYNavigationController
//
//  Created by zy on 15/6/24.
//  Copyright (c) 2015年 zy. All rights reserved.
//

// 欢迎关注www.zybug.com(万网主机)  ios.zybug.com(Github主机) test.zybug.com（三蛋主机）

#import "SecondViewController.h"
#import "UINavigationController+ZYNaigation.h"

@interface SecondViewController () <ZYNav>

@property (strong, nonatomic) NSDictionary * parDict;

@end

@implementation SecondViewController

- (void)ZYPushViewC:(UIViewController *)viewC param:(NSDictionary *)params {
    if (viewC) {
        // 这里是可以判断 从哪个ViewController跳转来的
    }
    
    self.parDict = params;
    
}

- (void)ZYNavigation:(NSString *)className {
    NSLog(@"%@",className);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@",self.parDict);
    
    UIBarButtonItem * leftItem = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(goBackView)];
    
    self.navigationItem.leftBarButtonItem = leftItem;
}

- (void)goBackView {
    
    [self.navigationController ZYNaviBackwithParam:@{@"test":@"zy"}];
    
}

@end
