//
//  DrawViewController.m
//  DrawShape
//
//  Created by Twisted Fate on 2020/3/26.
//  Copyright © 2020 Twisted Fate. All rights reserved.
//

#import "DrawViewController.h"
#import "ShapeView.h"

@interface DrawViewController ()
@end

@implementation DrawViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];

    [self addLineView];
}

- (void)addLineView {
    ShapeView *shapeView = [[ShapeView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:shapeView];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

@end
