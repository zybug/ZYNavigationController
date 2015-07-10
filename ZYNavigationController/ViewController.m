//
//  ViewController.m
//  ZYNavigationController
//
//  Created by zy on 15/6/24.
//  Copyright (c) 2015年 zy. All rights reserved.
//

// 欢迎关注www.zybug.com(万网主机)  ios.zybug.com(Github主机) test.zybug.com（三蛋主机）

#import "ViewController.h"
#import "SecondViewController.h"
#import "ZYView.h"
#import "UINavigationController+ZYNaigation.h"

@interface ViewController () <ZYNav>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self createView];
    
}

- (void)ZYNaviBack:(NSDictionary *)dict {
    NSLog(@"%@",dict);
}

- (void)createView {
    ZYView * zyView = [[ZYView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:zyView];
}


#if 0
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    NSDictionary * dict = @{@"wo":@"ni"};
    [self.navigationController ZYNavi:[SecondViewController new] withParam:dict];
}
#endif

@end
