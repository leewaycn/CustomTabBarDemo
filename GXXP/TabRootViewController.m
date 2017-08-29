//
//  TabRootViewController.m
//  GXXP
//
//  Created by 大鸟网络 on 2017/8/28.
//  Copyright © 2017年 com.bigbird. All rights reserved.
//

#import "TabRootViewController.h"

#import "MyTabBar.h"
#import "HomeViewController.h"
#import "VideoViewController.h"
#import "MessageViewController.h"
#import "MineViewController.h"
#import "AddViewController.h"
#import "MyNaviViewController.h"


@interface TabRootViewController ()<ZTTabBarDelegate>


@property (nonatomic,strong)MyTabBar *mytabBar;
@end

@implementation TabRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSLog(@"%@",self.tabBar);
    
    
    
    
    MyNaviViewController *homenavi = [[MyNaviViewController alloc]initWithRootViewController:[[HomeViewController alloc]init]];
    
    
    MyNaviViewController *videonavi = [[MyNaviViewController alloc]initWithRootViewController:[[VideoViewController alloc]init]];
    
    MyNaviViewController *messagenavi = [[MyNaviViewController alloc]initWithRootViewController:[[MessageViewController alloc]init]];
    
    MyNaviViewController *minenavi = [[MyNaviViewController alloc]initWithRootViewController:[[MineViewController alloc]init]];
    
    
    
    
//    self.viewControllers = @[homenavi,videonavi,messagenavi,minenavi];
    
    
    
    self.mytabBar = [[MyTabBar alloc]init];//WithFrame:self.tabBar.bounds];
//    self.mytabBar.backgroundColor = [UIColor redColor];
//    [self.view addSubview:self.mytabBar];
//    [self.tabBar removeFromSuperview];
    
    
    // 添加子控制器
    [self addChildVc:[[HomeViewController alloc] init] title:@"首页" image:@"tab_icon_home_normal" selectedImage:@"tab_icon_home_normal"];
    [self addChildVc:[[VideoViewController alloc] init] title:@"社区" image:@"tab_icon_home_normal" selectedImage:@"tab_icon_home_normal"];
    [self addChildVc:[[MessageViewController alloc] init] title:@"消息" image:@"tab_icon_home_normal" selectedImage:@"tab_icon_home_normal"];
    [self addChildVc:[[MineViewController alloc] init] title:@"咨询" image:@"tab_icon_home_normal" selectedImage:@"tab_icon_home_normal"];
    
    
    //取消tabBar的透明效果
    self.mytabBar.translucent = NO;
    self.mytabBar.myDelegate = self;
    // KVC：如果要修系统的某些属性，但被设为readOnly，就是用KVC，即setValue：forKey：。
    [self setValue:self.mytabBar forKey:@"tabBar"];
    
    
    
    
    
}

-(void)addChildVc:(UIViewController*)childVc title:(NSString*)title image:(NSString*)image selectedImage:(NSString*)selectedImage{
    
    // 设置子控制器的文字(可以设置tabBar和navigationBar的文字)
    childVc.title = title;
    
    // 设置子控制器的tabBarItem图片
    childVc.tabBarItem.image = [UIImage imageNamed:image];
    // 禁用图片渲染
    childVc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    // 设置文字的样式
    [childVc.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor blackColor]} forState:UIControlStateNormal];
    [childVc.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor redColor]} forState:UIControlStateSelected];
    //    childVc.view.backgroundColor = RandomColor; // 这句代码会自动加载主页，消息，发现，我四个控制器的view，但是view要在我们用的时候去提前加载
    
    // 为子控制器包装导航控制器
    MyNaviViewController *navigationVc = [[MyNaviViewController alloc] initWithRootViewController:childVc];
    // 添加子控制器
    [self addChildViewController:navigationVc];
    
//    作者：有味道的简书
//    链接：http://www.jianshu.com/p/c22e8585689b
//    來源：简书
//    著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
    
    
    
    
    
}
-(void)tabBarDidClickPlusButton:(MyTabBar *)tabBar{

    NSLog(@"%s",__func__);
    
    
    AddViewController *add = [[AddViewController alloc]init];
    [self presentViewController:[[MyNaviViewController alloc ]initWithRootViewController:add] animated:YES completion:nil];
    
//    [self presentViewController:add animated:YES completion:nil];

}


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
