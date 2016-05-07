//
//  SecondViewController.m
//  两个控制器之间使用代理传值
//
//  Created by ma c on 16/5/6.
//  Copyright © 2016年 彭盛凇. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    //判断delegate属性是否赋值成功，并且是否可以响应协议中的方法，如果能响应的话就调用协议中的方法
    
    if ([self.delegate respondsToSelector:@selector(SecondViewController:andSendTitle:)]) {
        [self.delegate SecondViewController:self andSendTitle:@"你好"];
    }
    
    if (self.block) {
        self.block(@"你好");
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

@end
