//
//  ZYView.m
//  ZYNavigationController
//
//  Created by zy on 15/6/25.
//  Copyright (c) 2015年 zy. All rights reserved.
//

#import "ZYView.h"
#import "AppDelegate.h"
#import "SecondViewController.h"
#import "UINavigationController+ZYNaigation.h"

@implementation ZYView

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor redColor];
        [self createButton];
    }
    return self;
}

- (void)createButton {
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.backgroundColor = [UIColor orangeColor];
    btn.frame = CGRectMake(0, 0, 50, 50);
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:btn];
}

- (void)btnClick:(UIButton *)btn {
    NSLog(@"%s",__func__);
    NSDictionary * dict = @{@"wo":@"ni"};
    AppDelegate * AppDele = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [AppDele.kNavigationCon ZYNavi:[SecondViewController new] withParam:dict];
    
    
//    [self ZYNavi:[SecondViewController new] withParam:dict];
}


@end
