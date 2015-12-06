//
//  PEARSlideImageViewController.m
//  ImageSlideViewer
//
//  Created by hirokiumatani on 2015/12/01.
//  Copyright © 2015年 hirokiumatani. All rights reserved.
//

#import "PEARImageSlideViewController.h"
#import "AutoLayout.h"
@interface PEARImageSlideViewController ()
@property (nonatomic,strong) UIWindow      * window;
@property (nonatomic,strong) PEARSlideView * slideView;
@end

@implementation PEARImageSlideViewController

#pragma mark - public
- (void)showAtIndex:(NSInteger)index
{
    if (!_window)
    {
        _window = [PEARUtility getWindow];
        [AutoLayout baseView:_window addSubView:_slideView];
    }

    
    [self moveSlideViewAtIndex:index];
    [UIView animateWithDuration:0.6
                     animations:^
     {
         _slideView.alpha = 1.0;
         _slideView.transform = CGAffineTransformIdentity;
     }completion:nil];
    
}

- (void)setImageLists:(NSArray *)imageLists;
{
    [self setSlideViewWithImageCount:imageLists.count];
    [self setZoomViewWithImageLists:imageLists];
}

#pragma mark - UIScrollViewDelegate

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    static NSInteger IMAGE_VIEW_TAG = 1;
    PEARZoomView *zoomView = [PEARZoomView new];
    zoomView.scrollView = scrollView;
    UIImageView * imageView = [zoomView.scrollView viewWithTag:IMAGE_VIEW_TAG];
    return imageView;
}

#pragma mark - PEARslideViewDelegate
- (void)tapCloseButton
{
    
    [UIView animateWithDuration:0.6
                     animations:^
     {
         _slideView.alpha = 0.0;
         _slideView.transform = CGAffineTransformMakeScale(10.0, 0.1);
     }
                     completion:^(BOOL finished)
     {
         [_slideView removeFromSuperview];
         _slideView = nil;
     }];
}

#pragma mark - private

#define screenWitdh  [[UIScreen mainScreen] bounds].size.width
#define screenHeight [[UIScreen mainScreen] bounds].size.height
#define imageTopMargin 64

- (void)moveSlideViewAtIndex:(NSInteger)index
{
    CGPoint offset;
    
    offset.x = screenWitdh * index;
    offset.y = 0.0f;
    
    [_slideView.scrollView setContentOffset:offset animated:NO];
}
- (void)setSlideViewWithImageCount:(NSInteger)imageCount
{
    _slideView = [PEARSlideView new];
    _slideView.delegate = self;
    _slideView.scrollViewWidth.constant = screenWitdh * imageCount;
}

- (void)setZoomViewWithImageLists:(NSArray *)imageLists
{
    if (!imageLists)return;
    
    for (NSInteger i =0; i < imageLists.count; i++)
    {
        PEARZoomView *zoomView = [PEARZoomView new];
        zoomView.scrollView.delegate = self;
        zoomView.frame = CGRectMake(screenWitdh *i,
                                     -imageTopMargin,
                                     screenWitdh,
                                     screenHeight);
        
        zoomView.imageView.image = imageLists[i];
        [_slideView.contentView addSubview:zoomView];
        
    }
    
}

@end
