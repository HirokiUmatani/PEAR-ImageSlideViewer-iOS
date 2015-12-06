//
//  PEARUtility.m
//  ImageSlideViewer
//
//  Created by hirokiumatani on 2015/12/01.
//  Copyright © 2015年 hirokiumatani. All rights reserved.
//

#import "PEARUtility.h"

@implementation PEARUtility
+ (UIWindow*)getWindow
{
    UIWindow *window = [UIApplication sharedApplication].windows[0];
    window.windowLevel = UIWindowLevelAlert;
    return window;
}
@end
