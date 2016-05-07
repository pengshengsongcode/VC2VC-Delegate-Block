//
//  SecondViewController.h
//  两个控制器之间使用代理传值
//
//  Created by ma c on 16/5/6.
//  Copyright © 2016年 彭盛凇. All rights reserved.
//

#import <UIKit/UIKit.h>

//将block重新命名

typedef void(^MyBlock)(NSString *Title);

@class SecondViewController;

/**
 *  声明一个协议，来实现控制器之间的代理传值(SecondViewController的协议)
 */
@protocol SecondViewControllerDelegate <NSObject>

/** 声明一个方法，进行控制器之间的传值 */
- (void)SecondViewController:(SecondViewController *)viewController andSendTitle:(NSString *)title;

@end

@interface SecondViewController : UIViewController

/** 声明代理属性*/
@property (nonatomic, weak)id <SecondViewControllerDelegate> delegate;

/** 声明block属性 */
@property (nonatomic, copy)MyBlock block;

@end
