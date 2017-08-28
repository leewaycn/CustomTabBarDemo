//
//  MyTabBar.h
//  GXXP
//
//  Created by 大鸟网络 on 2017/8/28.
//  Copyright © 2017年 com.bigbird. All rights reserved.
//

#import <UIKit/UIKit.h>

@class  MyTabBar;

@protocol ZTTabBarDelegate <UITabBarDelegate>

@optional

- (void)tabBarDidClickPlusButton:(MyTabBar *)tabBar;

@end


@interface MyTabBar : UITabBar
@property (nonatomic, weak) id<ZTTabBarDelegate> myDelegate;

@end
