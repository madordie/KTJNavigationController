//
//  KTJNavigationController.h
//  KTJNavigationController
//
//  Created by Keith on 15/7/31.
//  Copyright (c) 2015年 Madordie. All rights reserved.
//
//  https://github.com/madordie/KTJNavigationController.git


#import <UIKit/UIKit.h>
#import "UIScrollView+KTJPopGest.h"

/**
 *  对自定义返回按钮的侧滑返回支持。
 *      即用型。
 */
@interface KTJNavigationController : UINavigationController

@end

#if 0

使用说明：

1、导入该文件
    #import "KTJNavigationController.h"

2、使用 KTJNavigationController 推入
    self.window.rootViewController = [[KTJNavigationController alloc] initWithRootViewController:[[KTJViewController alloc] init]];

3、编译运行
    OK.

#endif