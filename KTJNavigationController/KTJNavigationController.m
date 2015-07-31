//
//  KTJNavigationController.m
//  KTJNavigationController
//
//  Created by Keith on 15/7/31.
//  Copyright (c) 2015年 Madordie. All rights reserved.
//
//  https://github.com/madordie/KTJNavigationController.git


#import "KTJNavigationController.h"

@interface KTJNavigationController ()<UINavigationControllerDelegate, UIGestureRecognizerDelegate>

@property(nonatomic,weak) UIViewController* currentShowVC;

@end

@implementation KTJNavigationController

- (instancetype)init
{
    return self;
}
-(instancetype)initWithRootViewController:(UIViewController *)rootViewController {
    self = [super initWithRootViewController:rootViewController];
    if (self) {
        
#if __IPHONE_OS_VERSION_MAX_ALLOWED < __IPHONE_7_0 // 当前支持的sdk版本是否低于7.0
#warning ❌error! KTJNavigationController SDK<7.0!!
#else
        self.interactivePopGestureRecognizer.delegate = self;
#endif
        
        self.delegate = self;
    }

    return self;
}

-(void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (navigationController.viewControllers.count == 1) {
        self.currentShowVC = Nil;
    } else {
        self.currentShowVC = viewController;
    }
}

-(BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    if (gestureRecognizer == self.interactivePopGestureRecognizer) {
        return (self.currentShowVC == self.topViewController);
    }
    return YES;
}

@end
