//
//  AutoLayout.m
//  AutoLayout
//
//  Created by hirokiumatani on 2015/06/18.
//  Copyright (c) 2015年 hirokiumatani. All rights reserved.
//

#import "AutoLayout.h"
@interface AutoLayout()
@property (nonatomic,strong)NSLayoutConstraint *top; //default constraint = 0
@property (nonatomic,strong)NSLayoutConstraint *bottom; //default constraint = 0
@property (nonatomic,strong)NSLayoutConstraint *left; //default constraint = 0
@property (nonatomic,strong)NSLayoutConstraint *right; //default constraint = 0
@property (nonatomic,strong)NSMutableArray *constraints;
@end
@implementation AutoLayout
+ (AutoLayout *)baseView:(id)baseView addSubView:(id)subView

{
    // Adding duplicate check of view
    [self addingDuplicateCheckOfBaseView:baseView addItem:subView];
    
    AutoLayout *autolayout = [AutoLayout new];
    [subView setTranslatesAutoresizingMaskIntoConstraints:NO];
        
    // Top
    autolayout.top = [NSLayoutConstraint constraintWithItem:subView
                                                      attribute:NSLayoutAttributeTop
                                                      relatedBy:NSLayoutRelationEqual
                                                         toItem:baseView
                                                      attribute:NSLayoutAttributeTop
                                                     multiplier:1.0
                                                       constant:0.0];
        
        // Down
    autolayout.bottom = [NSLayoutConstraint constraintWithItem:subView
                                                         attribute:NSLayoutAttributeBottom
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:baseView
                                                         attribute:NSLayoutAttributeBottom
                                                        multiplier:1.0
                                                          constant:0.0];
    // Left
    autolayout.left = [NSLayoutConstraint constraintWithItem:subView
                                                       attribute:NSLayoutAttributeLeft
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:baseView
                                                       attribute:NSLayoutAttributeLeft
                                                      multiplier:1.0
                                                        constant:0.0];
        
        
    // Right
    autolayout.right = [NSLayoutConstraint constraintWithItem:subView
                                                        attribute:NSLayoutAttributeRight
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:baseView
                                                        attribute:NSLayoutAttributeRight
                                                       multiplier:1.0
                                                         constant:0.0];
    // add Constraint List
    autolayout.constraints = @[].mutableCopy;
    [autolayout.constraints addObject:autolayout.top];
    [autolayout.constraints addObject:autolayout.bottom];
    [autolayout.constraints addObject:autolayout.left];
    [autolayout.constraints addObject:autolayout.right];
    [baseView addConstraints:autolayout.constraints];
    [baseView layoutIfNeeded];
    return autolayout;
}

+ (void)addingDuplicateCheckOfBaseView:(id)baseView addItem:(id)addItem
{
    UIView *_baseView = [baseView viewForBaselineLayout];
    NSArray *_subViews = _baseView.subviews;
    BOOL check = NO;
    for (UIView *view in _subViews)
    {
        if ([view isEqual:addItem])
        {
            check = YES;
            break;
        }
    }
    if (check == NO)
    {
        [baseView addSubview:addItem];
    }
}

- (void)part:(ConstraintPart)constraintPart margin:(CGFloat)margin
{
    CGFloat _margin = 0;
    switch (constraintPart)
    {
        case TOP_CONSTRAINT:
        {
            _margin = margin;
            _top.constant = _margin;
            break;
        }
        case BOTTOM_CONSTRAINT:
        {
            _margin -= margin;
            _bottom.constant = _margin;
            break;
        }
        case LEFT_CONSTRAINT:
        {
            _margin = margin;
            _left.constant = _margin;
            break;
        }
        case RIGHT_CONSTRAINT:
        {
            _margin -= margin;
            _right.constant = _margin;
            break;
        }
    }
}
@end
