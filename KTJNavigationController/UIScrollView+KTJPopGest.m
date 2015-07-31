//
//  UIScrollView+KTJPopGest.m
//  KTJNavigationController
//
//  Created by Keith on 15/7/31.
//  Copyright (c) 2015年 Madordie. All rights reserved.
//
//  https://github.com/madordie/KTJNavigationController.git


#import "UIScrollView+KTJPopGest.h"

@implementation UIScrollView (KTJPopGest)
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {

    if ([gestureRecognizer isKindOfClass:[UIPanGestureRecognizer class]]
        && [otherGestureRecognizer isKindOfClass:[UIScreenEdgePanGestureRecognizer class]]) {
        return YES;
    } else {
        return  NO;
    }
}
@end
