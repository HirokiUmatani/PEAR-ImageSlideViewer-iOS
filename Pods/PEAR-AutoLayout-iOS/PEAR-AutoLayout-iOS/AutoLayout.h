//
//  AutoLayout.h
//  AutoLayout
//
//  Created by hirokiumatani on 2015/06/18.
//  Copyright (c) 2015年 hirokiumatani. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
@interface AutoLayout : NSObject

typedef NS_ENUM(NSInteger,ConstraintPart)
{
    TOP_CONSTRAINT,
    BOTTOM_CONSTRAINT,
    LEFT_CONSTRAINT,
    RIGHT_CONSTRAINT
};

+ (AutoLayout *)baseView:(id)baseView addSubView:(id)subView;
- (void)part:(ConstraintPart)constraintPart margin:(CGFloat)margin;
@end
