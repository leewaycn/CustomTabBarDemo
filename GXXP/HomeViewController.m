//
//  HomeViewController.m
//  GXXP
//
//  Created by 大鸟网络 on 2017/8/28.
//  Copyright © 2017年 com.bigbird. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    UIButton *push = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    [self.view addSubview:push];
    push .backgroundColor = [UIColor redColor];
    [push addTarget:self action:@selector(pusheView:) forControlEvents:UIControlEventTouchUpInside];
    
}
-(void)pusheView:(UIButton*)btn{
    HomeViewController *home= [[HomeViewController alloc]init];
    [self.navigationController pushViewController:home animated:YES];
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
