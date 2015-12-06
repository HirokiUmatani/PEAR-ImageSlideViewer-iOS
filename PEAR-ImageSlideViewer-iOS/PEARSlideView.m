//
//  PEARMainSlideView.m
//  ImageSlideViewer
//
//  Created by hirokiumatani on 2015/12/01.
//  Copyright © 2015年 hirokiumatani. All rights reserved.
//

#import "PEARSlideView.h"

@implementation PEARSlideView

- (id)init
{
    if (self=[super init])
    {
        NSString *nibName = NSStringFromClass([self class]);
        UINib *nib = [UINib nibWithNibName:nibName bundle:nil];
        self = [[nib instantiateWithOwner:nil options:nil] objectAtIndex:0];
        self.frame = [[UIScreen mainScreen] bounds];
        self.alpha = 0.0;
        self.transform = CGAffineTransformMakeScale(0.01, 0.01);
        return self;
    }
    return self;
}

- (IBAction)tapCloseButton:(UIButton *)sender
{
    [_delegate tapCloseButton];
}
@end
