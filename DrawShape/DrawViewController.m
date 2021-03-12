//
//  DrawViewController.m
//  DrawShape
//
//  Created by Twisted Fate on 2020/3/26.
//  Copyright © 2020 Twisted Fate. All rights reserved.
//

#import "DrawViewController.h"
#import "ShapeView.h"
#import <TFKit-Objc/UIColor+TFKit.h>
@interface DrawViewController ()

@property (nonatomic, strong) NSString *typeStr;

@end

@implementation DrawViewController

- (instancetype)initWithTypeStr:(NSString *)typeStr {
    self = [super init];
    if (self) {
        _typeStr = typeStr;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = self.typeStr;
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self addShapeView];
}

- (void)addShapeView {
    
    ShapeView *shapeView = [[ShapeView alloc] initWithFrame:CGRectMake(0, kNavigationBarHeight, kScreenWidth, 400) typeStr:self.typeStr];
    shapeView.backgroundColor = [UIColor tf_colorWithHexString:@"f2f2f2"];
    [self.view addSubview:shapeView];
}

@end
