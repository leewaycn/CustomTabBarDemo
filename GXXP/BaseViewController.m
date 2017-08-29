
//
//  BaseViewController.m
//  GXXP
//
//  Created by 大鸟网络 on 2017/8/28.
//  Copyright © 2017年 com.bigbird. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()<UINavigationControllerDelegate>

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.view.backgroundColor = [UIColor colorWithWhite:arc4random()%255/255.0 alpha:1];
}

@end
