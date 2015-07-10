//
//  ACImageVCViewController.m
//  Autocorrect
//
//  Created by Peter Zimmerman on 7/9/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ACImageVC.h"

NSInteger const IMAGECOUNT = 8;

@interface ACImageVC ()

@end

@implementation ACImageVC

- (void)viewDidLoad {
    [super viewDidLoad];
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [scrollView setContentSize:CGSizeMake(scrollView.frame.size.width * IMAGECOUNT, self.view.frame.size.height)];
    scrollView.pagingEnabled = YES;
    [self.view addSubview: scrollView];
    // Do any additional setup after loading the view.
    for (int i = 0; i <IMAGECOUNT; i++) {
        UIImage *newImage = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",i+1]];
        UIImageView *createImage = [[UIImageView alloc] initWithImage:newImage];
        createImage.frame = CGRectMake(i * self.view.frame.size.width +20, 20, self.view.frame.size.width - 40, self.view.frame.size.height - 40);
        createImage.contentMode = UIViewContentModeScaleAspectFit;
        [scrollView addSubview:createImage];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
