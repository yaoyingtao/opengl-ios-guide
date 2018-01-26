//
//  ViewController.m
//  MY_Ch02
//
//  Created by tomy yao on 2018/1/22.
//  Copyright © 2018年 tomy yao. All rights reserved.
//

#import "ViewController.h"
#import "AGLView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AGLView *glView = [[AGLView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:glView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
