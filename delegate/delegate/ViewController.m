//
//  ViewController.m
//  两个控制器之间使用代理传值
//
//  Created by ma c on 16/5/6.
//  Copyright © 2016年 彭盛凇. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

// 服从SecondViewController的协议，并且实现协议之中的方法

@interface ViewController ()<SecondViewControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor grayColor];
}

//写一个点击方法，不愿意去写btn。。。

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    
    /*
     ****************************
     
     现在要实现的是SecondViewController 给 ViewController 传值
     
     所以需要在viewController里面给delegate属性赋值
     
     关于顺序关系：一定要先给delegate属性赋值，然后在调用view属性
     
     ****************************
     */
    
//    给secondVC的delegate属性赋值
//    secondVC.delegate = self;

    
//    实现block传值
    secondVC.block = ^(NSString *string) {
        
        NSLog(@"%@",string);
        
    };
    
    //可以不写
    
    secondVC.view.backgroundColor = [UIColor redColor];
    
    //模态视图 用来加载secondVC的viewDidLoad
    
    [self presentViewController:secondVC animated:YES completion:nil];
}

- (void)SecondViewController:(SecondViewController *)viewController andSendTitle:(NSString *)title {
    
    NSLog(@"%@ %@",viewController,title);
}

@end
