//
//  PEARZOOMImageView.h
//  ImageSlideViewer
//
//  Created by hirokiumatani on 2015/12/01.
//  Copyright © 2015年 hirokiumatani. All rights reserved.
//

#import <UIKit/UIKit.h>
/**
 scrollView
    └imageView
 */
@interface PEARZoomView : UIView



@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end
