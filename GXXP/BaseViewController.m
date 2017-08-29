
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
    // Do any additional setup after loading the view.
    
    self.navigationController.delegate = self;
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.view.backgroundColor = [UIColor colorWithWhite:arc4random()%255/255.0 alpha:1];
}
//
//- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
//{
//    //    viewController.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStyleDone target:nil action:nil];
//    //
//    
//    if (self.viewControllers.count != 0) {
//        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"icon_goback_p"] style:UIBarButtonItemStyleDone target:self action:@selector(back)];
//    }
//    
//    
//    
//    [super pushViewController:viewController animated:animated];
//    
//    
//    
//    
//    //    作者：tripleCC
//    //    链接：http://www.jianshu.com/p/457c80cbb487
//    //    來源：简书
//    //    著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
//    //
//}

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
