

//
//  AddViewController.m
//  GXXP
//
//  Created by 大鸟网络 on 2017/8/28.
//  Copyright © 2017年 com.bigbird. All rights reserved.
//

#import "AddViewController.h"
#import "MyNaviViewController.h"
@interface AddViewController ()

@end

@implementation AddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    

    
    
    
    UIButton *push = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    [self.view addSubview:push];
    push .backgroundColor = [UIColor orangeColor];
    [push addTarget:self action:@selector(pusheView:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *pushb = [[UIButton alloc]initWithFrame:CGRectMake(0, 100, 100, 100)];
    [self.view addSubview:pushb];
    pushb .backgroundColor = [UIColor blueColor];
    [pushb addTarget:self action:@selector(pushdeView:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    
    
    
    
}
-(void)pushdeView:(id)sender{
    AddViewController *otheradd = [[AddViewController alloc]init];
    
    if (self.navigationController) {
        [self.navigationController pushViewController:otheradd animated:YES];
    }else{
        [self presentViewController:otheradd animated:YES completion:nil];
    }
}
-(void)pusheView:(id)sender{
    if (self.navigationController) {
        [self.navigationController dismissViewControllerAnimated:YES completion:nil];
    }else
    [self dismissViewControllerAnimated:YES completion:nil];
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
