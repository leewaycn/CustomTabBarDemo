
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
    self.delegate = self;
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

    
    if (self.viewControllers.count != 0) {
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"icon_goback_p"] style:UIBarButtonItemStyleDone target:self action:@selector(back:)];
        viewController.hidesBottomBarWhenPushed = YES;
    }else{

    }
    [super pushViewController:viewController animated:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldBeRequiredToFailByGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer{
    
    
    NSLog(@"%@-%@",[gestureRecognizer class],[otherGestureRecognizer class]);
    
    return YES;
}
-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch{
    return YES;
}
-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRequireFailureOfGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer{
    NSLog(@"%@-%@",[gestureRecognizer class],[otherGestureRecognizer class]);
    
    
    return YES;
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
