
//
//  MyNaviViewController.m
//  GXXP
//
//  Created by 大鸟网络 on 2017/8/28.
//  Copyright © 2017年 com.bigbird. All rights reserved.
//

#import "MyNaviViewController.h"

@interface MyNaviViewController ()
<UINavigationControllerDelegate,UIGestureRecognizerDelegate>
@end

@implementation MyNaviViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

//    self.navigationBar.backItem.hidesBackButton = NO;
//    self.navigationItem.leftBarButtonItem = [[UINavigationItem alloc]initWithTitle:@"bacek"];
    
    // 获取特定类的所有导航条
//    UINavigationBar *navigationBar = [UINavigationBar appearanceWhenContainedIn:self, nil];
//    
//    // 方式1：使用自己的图片替换原来的返回图片
//    navigationBar.backIndicatorImage = [UIImage imageNamed:@"icon_goback_p"];
////    navigationBar.backIndicatorTransitionMaskImage = [UIImage imageNamed:@"icon_goback_p"];
//    
//    // 方式2：设置返回图片颜色
//    navigationBar.tintColor = [UIColor whiteColor];
    
//    作者：tripleCC
//    链接：http://www.jianshu.com/p/457c80cbb487
//    來源：简书
//    著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
    
    
    self.delegate = self;
    self.hidesBottomBarWhenPushed = YES;
    
    self.interactivePopGestureRecognizer .delegate = self;
    
}
-(void)back:(UIBarButtonItem*)barck{
    NSLog(@"%s",__func__);

    if (self.viewControllers.count!=0) {
        
        [super popViewControllerAnimated:YES];
    }else{
        [super dismissViewControllerAnimated:YES completion:nil];
    }
}
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
//    viewController.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStyleDone target:nil action:nil];
//    
    
    if (self.viewControllers.count != 0) {
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"icon_goback_p"] style:UIBarButtonItemStyleDone target:self action:@selector(back:)];
        
    
        self.hidesBottomBarWhenPushed = YES;
    }

    
    
    [super pushViewController:viewController animated:animated];
    
    
    
    
//    作者：tripleCC
//    链接：http://www.jianshu.com/p/457c80cbb487
//    來源：简书
//    著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
//    
}

//作者：tripleCC
//链接：http://www.jianshu.com/p/457c80cbb487
//來源：简书
//著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
