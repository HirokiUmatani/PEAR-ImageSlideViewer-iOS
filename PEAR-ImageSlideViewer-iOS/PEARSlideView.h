//
//  PEARMainSlideView.h
//  ImageSlideViewer
//
//  Created by hirokiumatani on 2015/12/01.
//  Copyright © 2015年 hirokiumatani. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol PEARSlideViewDelegate <NSObject>

- (void)tapCloseButton;

@end

/**
 scrollView
    └contentView
 */
@interface PEARSlideView : UIView

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *scrollViewWidth;
@property (nonatomic,assign) id <PEARSlideViewDelegate>delegate;
@end
