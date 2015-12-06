//
//  PEARZOOMImageView.m
//  ImageSlideViewer
//
//  Created by hirokiumatani on 2015/12/01.
//  Copyright © 2015年 hirokiumatani. All rights reserved.
//

#import "PEARZoomView.h"
@interface PEARZoomView()

@end
@implementation PEARZoomView


- (id)init
{
    if (self=[super init])
    {
        NSString *nibName = NSStringFromClass([self class]);
        UINib *nib = [UINib nibWithNibName:nibName bundle:nil];
        self = [[nib instantiateWithOwner:nil options:nil] objectAtIndex:0];
        return self;
    }
    return self;
}

@end
