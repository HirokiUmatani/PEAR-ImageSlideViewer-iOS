//
//  ViewController.m
//  ImageSlideViewer
//
//  Created by hirokiumatani on 2015/12/01.
//  Copyright © 2015年 hirokiumatani. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,retain)PEARImageSlideViewController * slideImageViewController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)tapButton:(UIButton *)sender
{
    _slideImageViewController = [PEARImageSlideViewController new];
    
    NSArray *imageLists = @[
                            [UIImage imageNamed:@"sample1.jpg"],
                            [UIImage imageNamed:@"sample2.jpg"],
                            [UIImage imageNamed:@"sample3.jpg"],
                            [UIImage imageNamed:@"sample4.jpg"],
                            [UIImage imageNamed:@"sample5.jpg"]
                            ].copy;
    [_slideImageViewController setImageLists:imageLists];
    [_slideImageViewController showAtIndex:0];
}

@end
