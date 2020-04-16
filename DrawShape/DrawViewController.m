//
//  DrawViewController.m
//  DrawShape
//
//  Created by Twisted Fate on 2020/3/26.
//  Copyright © 2020 Twisted Fate. All rights reserved.
//

#import "DrawViewController.h"
#import <WebKit/WebKit.h>
@interface DrawViewController ()
@property (nonatomic, strong) WKWebView *webView;
@end

@implementation DrawViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:view];
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:@{@"kk":@"1"}];
    [dict removeObjectForKey:@"123"];
    
    CGFloat radius = 20; // 圆角大小
    UIRectCorner corner = UIRectCornerAllCorners; // 圆角位置，全部位置
    UIBezierPath * path = [UIBezierPath bezierPathWithRoundedRect:view.bounds byRoundingCorners:corner cornerRadii:CGSizeMake(radius, radius)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = view.bounds;
    maskLayer.path = path.CGPath;
    maskLayer.masksToBounds = YES;

    // 带边框则两个颜色不要设置成一样即可
    maskLayer.strokeColor = [UIColor redColor].CGColor;
    maskLayer.fillColor = [UIColor blueColor].CGColor;
    [view.layer addSublayer:maskLayer];
//    view.clipsToBounds = true;
//    WKWebViewConfiguration *config = [[WKWebViewConfiguration alloc] init];
//    self.webView = [[WKWebView alloc] initWithFrame:self.view.bounds configuration:config];
//    [self.view addSubview:self.webView];
//
//    NSURL *url = [NSURL URLWithString:@"https://wx.jfx.qdfaw.com/qqWeChatOfficialRelease2/web/car-buyCars-zl/buyCars.html"];
//    [self.webView loadRequest: [NSURLRequest requestWithURL:url]];
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
