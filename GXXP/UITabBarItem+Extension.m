//
//  UITabBarItem+Extension.m
//  GXXP
//
//  Created by 大鸟网络 on 2017/8/28.
//  Copyright © 2017年 com.bigbird. All rights reserved.
//

#import "UITabBarItem+Extension.h"
#import "UIView+Extension.h"

@implementation UITabBarItem (Extension)
/**
 *  创建一个item
 *
 *  @param target    点击item后调用哪个对象的方法
 *  @param action    点击item后调用target的哪个方法
 *  @param image     图片
 *  @param highImage 高亮的图片
 *
 *  @return 创建完的item
 */
+ (UIBarButtonItem *)itemWithTargat:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    // 设置图片
    [btn setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    // 设置尺寸
    btn.size = btn.currentBackgroundImage.size;
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}

//作者：有味道的简书
//链接：http://www.jianshu.com/p/c22e8585689b
//來源：简书
//著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
@end
